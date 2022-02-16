import cx_Oracle
import pandas as pd
import requests
import lxml

my_headers_1={"referer":"https://www.awe.gov.au/abares/data/weekly-commodity-price-update",
            "user-agent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36"}

t_data_list=[]
url_1 = 'https://www.awe.gov.au/abares/data/weekly-commodity-price-update'
res_1 = requests.get(url=url_1, headers=my_headers_1)
df = pd.read_html(res_1.text)[0]

df = df.drop([0,1,9,15,23], axis=0)
indicator = df['Indicator'].str.split(',', expand=True)[0]
df['Indicator'] = indicator
try:
    conn = cx_Oracle.connect('farm/farm@//localhost:1521/xe')
except Exception as error:
    print('Connection Error', error)
else:
    print(conn.version)
    try:
        # create cursor
        cur = conn.cursor()
        cur.execute('DELETE FROM world_price')
        for i in range(len(df)):
            cur.execute('INSERT INTO world_price (indicator, weekended, unit, latestprice, previouseweek, weeklychange, priceyearago, annualchange) VALUES (:1,:2,:3,:4,:5,:6,:7,:8)',
                           (df.iloc[i, 0],df.iloc[i, 1],df.iloc[i, 2],df.iloc[i, 3],df.iloc[i, 4],
                            df.iloc[i, 5],df.iloc[i, 6],df.iloc[i, 7],))
    except Exception as error:
        print('Error while updating data', error)
    else:
        print('update completed')
        conn.commit()
finally:
    cur.close()
    conn.close()
