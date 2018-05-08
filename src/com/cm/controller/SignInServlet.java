package com.cm.controller;

import com.cm.dao.UserDao;
import com.cm.model.Room;
import com.cm.model.User;
import com.cm.utils.ConnectionManager;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

//@WebServlet(name = "SignInServlet")
public class SignInServlet extends HttpServlet {


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String roomNumber = request.getParameter("name");
        Room currentRoom = new Room("gg","gg");
        System.out.println(roomNumber);
        for (Room room : UserManagementServlet.rooms)
            if (room.name.equals(roomNumber)){
                currentRoom = room;
            }

//        String timeslot = request.getParameter("timeslot");
//        {
//            headCount = room.hashMap.get(roomNumber);
//            rn = roomNumber;
//        }
//        {
//            int ts = Integer.parseInt(timeslot);
//            headCount[ts] ++;
//            room.hashMap.put(rn, headCount);
//        }
//
//            request.setAttribute("RoomNumber", rn);
        request.setAttribute("room", currentRoom);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("trade.jsp");
        requestDispatcher.forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
