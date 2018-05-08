package com.cm.model;

import java.util.ArrayList;
import java.util.HashMap;

public class Room {
    public String name;
    public String type;
    public int capacity;
    public int[] headCount;

    public Room(String name, String type){
        this.name = name;
        this.type = type;
        capacity = 20;
        headCount = new int[3];
    }
}
