<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Organizing Committee - FemFlare 2025</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap');
        
        :root {
            --primary-white: #ffffff;
            --primary-cream: #efebe0;
            --primary-pink: #fb8da0;
            --primary-hot-pink: #fb6b90;
            --primary-fuchsia: #fb4570;
            --text-dark: #2c2c2c;
            --text-light: #666666;
            --glass-bg: rgba(255, 255, 255, 0.1);
            --glass-border: rgba(251, 69, 112, 0.2);
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, var(--primary-cream) 0%, var(--primary-pink) 50%, var(--primary-hot-pink) 100%);
            background-attachment: fixed;
            min-height: 100vh;
            overflow-x: hidden;
            position: relative;
        }

        /* Animated background particles */
        body::before {
            content: '';
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: url('data:image/svg+xml,<svg width="60" height="60" viewBox="0 0 60 60" xmlns="http://www.w3.org/2000/svg"><g fill="none" fill-rule="evenodd"><g fill="%23fb8da0" fill-opacity="0.03"><circle cx="30" cy="30" r="2"/></g></svg>');
            animation: float 20s ease-in-out infinite;
            z-index: -1;
        }

        @keyframes float {
            0%, 100% { transform: translateY(0px); }
            50% { transform: translateY(-20px); }
        }

        .committee-container {
            max-width: 1400px;
            margin: 0 auto;
            padding: 80px 20px 60px;
            position: relative;
        }

        .hero-section {
            text-align: center;
            margin-bottom: 60px;
            position: relative;
        }

        .hero-title {
            font-size: 4rem;
            font-weight: 800;
            color: var(--primary-fuchsia);
            text-shadow: 2px 2px 4px rgba(0,0,0,0.3);
            margin-bottom: 20px;
            text-transform: uppercase;
            letter-spacing: 3px;
            animation: fadeInUp 1s ease-out;
        }

        .hero-subtitle {
            font-size: 1.5rem;
            color: var(--text-dark);
            font-weight: 600;
            text-shadow: 1px 1px 2px rgba(255,255,255,0.5);
            margin-bottom: 30px;
            animation: fadeInUp 1s ease-out 0.2s both;
        }

        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .table-container {
            background: var(--glass-bg);
            backdrop-filter: blur(10px);
            border: 1px solid var(--glass-border);
            border-radius: 20px;
            padding: 30px;
            box-shadow: 0 20px 60px rgba(251, 69, 112, 0.1);
            animation: fadeInUp 1s ease-out 0.4s both;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background: transparent;
            border-radius: 15px;
            overflow: hidden;
        }

        thead {
            background: linear-gradient(135deg, var(--primary-fuchsia), var(--primary-hot-pink));
            color: var(--primary-white);
        }

        th {
            padding: 20px 15px;
            font-weight: 600;
            font-size: 1.1rem;
            text-transform: uppercase;
            letter-spacing: 1px;
            border: none;
        }

        td {
            padding: 18px 15px;
            border: none;
            border-bottom: 1px solid rgba(251, 69, 112, 0.1);
            font-weight: 500;
            color: var(--text-dark);
        }

        td:nth-child(3) {
            text-align: left;
            padding-left: 20px;
        }

        tbody tr {
            background: rgba(255, 255, 255, 0.7);
            transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
        }

        tbody tr:nth-child(even) {
            background: rgba(251, 141, 160, 0.1);
        }

        tbody tr:hover {
            background: rgba(251, 69, 112, 0.15);
            transform: translateY(-2px);
            box-shadow: 0 5px 20px rgba(251, 69, 112, 0.2);
        }

        /* Responsive design */
        @media (max-width: 768px) {
            .hero-title {
                font-size: 2.5rem;
            }
            
            .hero-subtitle {
                font-size: 1.2rem;
            }
            
            .committee-container {
                padding: 70px 15px 40px;
            }
            
            .table-container {
                padding: 20px;
                overflow-x: auto;
            }
            
            table {
                font-size: 0.9rem;
                min-width: 600px;
            }
            
            th, td {
                padding: 12px 10px;
            }
        }
    </style>
</head>
<body>
    <%@include file="mainnavbar.jsp" %>
    
    <div class="committee-container">
        <div class="hero-section">
            <h1 class="hero-title">Organizing Committee</h1>
            <p class="hero-subtitle">Co-Conveners & Committee Members - FemFlare 2025</p>
        </div>
        
        <div class="table-container">
            <table>
                <thead>
                    <tr>
                        <th>S. No.</th>
                        <th>Committee</th>
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
    </div>
</body>
</html>