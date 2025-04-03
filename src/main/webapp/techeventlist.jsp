<%@ page import="java.util.List" %>
<%@ page import="com.klef.flemflare.model.TechEvent" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    List<TechEvent> events = (List<TechEvent>) request.getAttribute("events");
%>

<!DOCTYPE html>
<html>
<head>
    <title>Tech Events</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">

    <style>
        body {
            background-color: #f9f9f9;
        }

        .container {
            background: white;
            border-radius: 12px;
            padding: 20px;
            box-shadow: 0px 0px 15px rgba(255, 105, 180, 0.5);
        }

        h2 {
            color: #ff4081;
            font-weight: bold;
        }

        .event-card {
            background: white;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-bottom: 15px;
            padding: 10px;
            cursor: pointer;
            transition: 0.3s;
        }

        .event-card:hover {
            box-shadow: 0 0 15px rgba(255, 105, 180, 0.4);
        }

        .event-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            font-size: 18px;
            font-weight: bold;
            color: #ff4081;
        }

        .event-details {
            display: none;
            padding-top: 10px;
            color: #333;
        }

        .btn-primary {
            background-color: #ff4081;
            border: none;
        }

        .btn-primary:hover {
            background-color: #e91e63;
        }

        .arrow {
            font-size: 20px;
            transition: 0.3s;
        }

        .rotate {
            transform: rotate(180deg);
        }
    </style>
</head>
<body>

    <%@include file="stunavbar.jsp" %>

    <div class="container mt-4">
        <h2 class="text-center mb-4">Upcoming Tech Events</h2>
        
        <% if (events != null && !events.isEmpty()) { 
            for (int i = 0; i < events.size(); i++) { 
                TechEvent event = events.get(i); 
        %>
                <div class="event-card" onclick="toggleDetails(<%= i %>)">
                    <div class="event-header">
                        <span><%= event.getName() %></span>
                        <div>
                            <% if (event.getRegisterLink() != null && !event.getRegisterLink().isEmpty()) { %>
                                <a href="<%= event.getRegisterLink() %>" class="btn btn-primary btn-sm" target="_blank">Register</a>
                            <% } else { %>
                                <button class="btn btn-secondary btn-sm" disabled>Not Available</button>
                            <% } %>
                            <span class="arrow" id="arrow<%= i %>">&#9662;</span>
                        </div>
                    </div>
                    <div class="event-details" id="details<%= i %>">
                        <p><strong>Description:</strong> <%= event.getDescription() %></p>
                        <p><strong>Venue:</strong> <%= event.getVenue() %></p>
                        <p><strong>Time:</strong> <%= event.getTime() %></p>
                    </div>
                </div>
        <% } } else { %>
            <p class="text-center">No events available</p>
        <% } %>
    </div>

    <script>
        function toggleDetails(index) {
            var details = document.getElementById("details" + index);
            var arrow = document.getElementById("arrow" + index);

            if (details.style.display === "block") {
                details.style.display = "none";
                arrow.classList.remove("rotate");
            } else {
                details.style.display = "block";
                arrow.classList.add("rotate");
            }
        }
    </script>

</body>
</html>
