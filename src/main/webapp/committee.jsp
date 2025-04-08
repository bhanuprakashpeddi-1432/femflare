<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Organizing Committee</title>
    <style>
        /* Girly Theme - Soft Pink & Elegant */
        body {
            background: linear-gradient(to right, #ffdde1, #ee9ca7);
            font-family: Arial, "Times New Roman", sans-serif;
            text-align: center;
            margin: 0;
            padding: 0;
        }
        

        /* Container */
        .container {
            max-width: 90%;
            margin: 50px auto;
            background: white;
            padding: 20px;
            border-radius: 15px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
        }

        /* Heading */
        h1 {
            color: #d63384;
            font-size: 2.5em;
            text-shadow: 2px 2px #ffafcc;
        }

/* Align second column (Committee Name) to the left */
td:nth-child(3) {
    text-align: left;
    padding-left: 15px; /* Adds spacing for better readability */
}

        /* Table */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
        }

        /* Table Head */
        thead {
            background: #ffafcc;
            color: white;
        }

        th, td {
            padding: 10px;
            border: 1px solid #ffb6c1;
            text-align: center;
        }

        /* Alternating Row Colors */
        tbody tr:nth-child(odd) {
            background: #ffe4e1;
        }

        tbody tr:nth-child(even) {
            background: #f8c8dc;
        }

        /* Hover Effect */
        tbody tr:hover {
            background: #ffdde1;
            transform: scale(1.02);
            transition: 0.3s;
        }

        /* Responsive Design */
        @media screen and (max-width: 600px) {
            table {
                font-size: 0.8em;
            }
        }
    </style>
</head>
<body>
<%@include file="mainnavbar.jsp" %>
    <div class="container">
        <h1>CO-CONVENERS & ORGANISING COMMITTEE</h1>
        <table>
            <thead>
                <tr>
                    <th>S. No.</th>
                    <th>Name of the Committee</th>
                    <th>Faculty In-charge(s)</th>
                </tr>
            </thead>
            <tbody>
                <%
                    String[][] committeeData = {
                    	{"1", "Co-Convener", "Dr. P .Sailaja,Associate Professor,Department of LAW, KLEF"},     		
                    	{"2", "Co-Convener", "Mrs . N. Srilakshmi,Assistant Prof-Pharmacy,Co-Convener WDC , KLEF"},             	
                    	{"3", "Co-Convener", "Dr Geeta,Associate Professor,Department of MBA-KLH"}, 		
                        {"4", "Registrations & Helpdesk", "Dr. K. Venkata Sowmya, Mrs. N. Praveena, Ms. R. Sathviki, Dr. Sundari Dadhabai, Dr. R Supriya"},
                        {"5", "Photography & ET Facilities", "Ms. M. Praveena, Dr. M. Siva Kumar"},
                        {"6", "Designing, Banners, Publicity", "Mrs. N. Sri Lakshmi, Ms. P. Aarthi, Dr. R. Kanimozhi, Dr. Sravani Dumala, Mr. V. Ananda Rao"},
                        {"7", "Treasurer", "Dr. Aruna Sri, Dr. N Vedavathi"},
                        {"8", "Hospitality & Guests", "Dr. I. Govardhini, Dr. A. Pavani, Dr. Ch. Neelima, Dr. Raju Anitha, Mrs. N. Bhargavi, Ms. S. Vijaya Lakshmi,Dr. Y.Srilakshmi, Manager Girls Hostels."},
                        {"9", "Transport", "Dr. Manisha Semwal, Dr. A. Ram Prasad, Dr. D. Naga Malleswari, Dr. Ch. Radhika Rani"},
                        {"10", "Discipline", "Dr. M. Kavitha, Assoc. Prof, CSE-H1., Mr. P.S.V.S Sridhar, Professor, CSE., Dr. K. Ravindranath, Assoc. Prof, CSE., Ms. V Sree Lakshmi, Asst. Prof, CE., Ms. G. Swapna, Asst. Prof, EEE., All HODs"},
                        {"11", "Prizes and Certificates", "Dr. P. Ramya, Asst. Prof, CSE-H., Dr. K. Girija Sravani, Assoc. Prof, ECE., Dr. K. Deepthi, Asst. Prof, Chemistry., Dr. T. Kanthimathi, Asst. Prof, ME., Mrs. V. Prasanthi, Asst. Prof-CSE."},
                        {"12", "Stage Decoration & Campus Beautification", "Dr. A. Priya, HOD-Architecture., Dr. Syed Intiyaz, Assoc. Dean P& D, Assoc. Prof, ECE., Dr. Mahamuda Sk, Assoc. Prof, Physics., Ms. K. Venkata Lakshmi, Asst. Prof, Architecture."},
                        {"13", "Stage Management / Cultural programs / Competitions", "Dr. K. Ch. Sri Kavya, Director -Alumni Relations., Dr. K. Vishnu Divya, HOD-English., Dr. S. Sridevi, Asst. Prof, IOT., Ms. M. Padmavathi, Asst. Prof, Food Technology., Ms. Ch. Nagamani, Asst. Prof, CSE., Ms. Tejaswini S, Asst. Prof, Agriculture., Mr. R. Subhakar Raju, Co-Ordinator Hobby Clubs., Mr. Prasad, Dance Trainer."},
                        {"14", "Lighting and Sound Systems, Seating Arrangements", "Dr. M. Suman, Vice Principal-CoE, HOD-ECE., Dr. G R K Prasad, Assoc. Dean P& D & Assoc. Prof, ECE., Mrs. K. Sarada, Assoc. Prof, EEE., Mr. D. Seshi Reddy, Assoc. Prof, EEE., Dr. S. Srinivas Rao, Deputy Registrar."},
                        {"15", "Invitation Cards Printing & Distribution", "Dr. Y. Usha Devi, Assoc. Prof, ECE., Dr. B. Jyothi, Asst. Prof, EEE., Ms. MD. Jahasultana, Asst. Prof, Pharmacy., Ms. Mary Swarupa D, Asst. Prof, MCA., Mrs. P Supriya, Asst. Prof, CSE., Mrs. G. Jyothi, HR Executive."},
                        {"16", "Events (Literary, Spot Technical and Non-Technical etc.)", "Dr. S. Lavanya, Assoc. Prof, English., Dr. K. Sireesha, Asst. Prof, MDI&E., Dr. Vyoma Singh, Assoc. Prof, ECE., Mr. P. Srikanth Reddy, Asst. Prof -(ECE)., Dr. P. Rajeswari, Assoc. Prof, Pharmacy,Mrs. Ch. Vimala, Asst. HR Manager,Dr M. Poojitha, Asst. PD,Mrs. Bhanu, Lab Technician – IOT,Mrs. Kamali, AO."},
                        {"17", "Paper Presentations", "Dr. D. Bhavana, Assoc. Prof -ECE., Dr. P. Vidyullatha, Assoc. Prof -CSE., Dr. N.V. Siva Kumari, Assoc. Prof CSS., Dr. A.V. Padmavathi, Assoc. Prof, English., Dr. B. Pooja Sudharma, Asst. Prof, Law."},
                        {"18", "Sponsorships and Stalls", "Dr. T. Santhi Sri, Deputy HOD CSE, KLEF., Dr. T. Pavan Kumar, HOD-CSE., Dr. K. Hema Divya, Assoc. Prof, MBA,Dr. P. Venkateshwara Rao, HOD-BBA,Mr. P. Srikanth Reddy, In-charge NSS."},
                        {"19", "Workshops", "Dr. Sujatha Moorthy, Deputy HOD & Professor, ECE., Dr. Nilu Singh, Deputy HOD, Assoc. Prof, CSE-H,Dr.G.Pradeepini, Assoc. Dean R & D,Ms. Ch. Sarvani, Asst. Prof, MCA."},
                        {"20", "Poster Presentations & Art exhibition & Craft exhibition", "Dr. Swarna Kuchibhotla, Assoc. Prof, CSE., Dr. Mothukuri Radha, Assoc. Prof CSE,Dr. S.  Santha Kumari, HOD-Commerce,Ms. K. Swathi Priya, Arts,Mrs. Y. Vijaya, Arts trainer."},
                        {"21", "Fashion Show / Lifestyle / Pro Show", "Dr. K. Sony, Asst. Director- Alumni Relations,Mrs. V Lakshmi Lalitha, Asst. Prof, AI&DS,Dr. M. Latha, Assoc. Dean -Academics,Dr. Leena Aarya, Assoc. Prof, CSE, Dr. A. Anuradha, Asst. Prof, BBA,Ms. Bommisetti Yamini Supriya, CSE."},	
                        {"22", "Ambulance and First Aid & Space Management", "Dr. E. Sreedevi (BES)."}
                    };

                    for (String[] row : committeeData) {
                %>
                <tr>
                    <td><%= row[0] %></td>
                    <td><%= row[1] %></td>
                    <td><%= row[2] %></td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </div>
</body>
</html>
