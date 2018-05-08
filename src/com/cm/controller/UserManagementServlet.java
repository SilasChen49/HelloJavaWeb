package com.cm.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;

import com.cm.dao.*;
import com.cm.model.*;

//@WebServlet(name = "UserManagementServlet")
public class UserManagementServlet extends HttpServlet {

    public static HashMap<String, ArrayList<Room>> roomList;
    public static ArrayList<Room> rooms;

    @Override
    public void init() throws ServletException {
        super.init();
        roomList = new HashMap<>();
        Room room = new Room("201", "Lab");
        ArrayList<Room> rooms = new ArrayList<>();
        rooms.add(room);
        Room room1 = new Room("202", "Conference");
        rooms.add(room1);
        roomList.put("2018-05-10", rooms);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String date = request.getParameter("date");
        System.out.println(date);
        rooms = roomList.get(date);
        System.out.print(rooms.get(0).name);
        request.setAttribute("roomList", rooms);

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("signIn.jsp");
        requestDispatcher.forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    private User buildUser(HttpServletRequest request){
        User user = new User();
        user.setID(request.getParameter("id"));
        user.setPassword(request.getParameter("password"));
        user.setDescription(request.getParameter("description"));
        user.setGender(request.getParameter("gender"));
        user.setEmail(request.getParameter("email"));
        user.setName(request.getParameter("name"));
        return user;
    }

    private void setUser(User user, HttpServletRequest request){
        request.setAttribute("name", user.getName());
        request.setAttribute("id",user.getID());
        request.setAttribute("description", user.getDescription());
        request.setAttribute("email", user.getEmail());
        request.setAttribute("gender", user.getGender());
        request.setAttribute("password",user.getPassword());
    }
}
