package com.farmporter.myapp.model;

public class AuthInfo {

    private String id;
    private String name;

    public String getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public AuthInfo(String id , String name) {
        this.id = id;
        this.name = name;
    }
}
