<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>KL University Leadership</title>
    <style>
        body {
    background: linear-gradient(45deg, #ffdde1, #fcbad3, #f8cdda, #f3d1f4, #ffcfdf, #ffdde1);
    background-size: 400% 400%;
    animation: gradientAnimation 10s ease infinite;
    text-align: center;
    font-family: Arial, sans-serif;
}

@keyframes gradientAnimation {
    0% { background-position: 0% 50%; }
    50% { background-position: 100% 50%; }
    100% { background-position: 0% 50%; }
}
p {
    font-size: 16px;         /* Standard font size */
    line-height: 1.6;        /* Improves readability */
    text-align: justify;     /* Aligns text properly */
    color: #333;            /* Dark grey for readability */
    margin: 10px 0;         /* Adds spacing between paragraphs */
    padding: 5px;           /* Slight padding for better spacing */
}


        
        .profile {
            padding: 20px;
            border-radius: 10px;
            background: linear-gradient(90deg, #ffdde1, #fad0c4);
            margin-bottom: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
            text-align: center;
        }

       
   


        /* Responsive Design */
        @media (max-width: 768px) {
            .profile img {
                width: 60%;
            }

            .section {
                padding: 10px;
                font-size: 14px;
            }
        }

        @media (max-width: 480px) {
            .profile img {
                width: 70%;
            }

            .section {
                font-size: 13px;
            }
        }
    </style>
</head>
<body>
<%@include file="mainnavbar.jsp" %>
    <div class="container">
        <br><br><br><br>
        
        <h1><b>OUR VISIONARIES</b></h1>

        <!-- President Section -->
        <div class="profile">
            <img src="images/k_Satayanarayana.jpg" alt="Dr. Koneru Satyanarayana">
            <h2>Er. Koneru Satyanarayana</h2>
            <h4>President</h4>
        </div>

        <div class="section">
            <h3>About the President</h3>
            <p>Er. Koneru Satyanarayana is the President of KL (Koneru Lakshmaiah) Deemed-to-be-University, Vijayawada, Guntur, Andhra Pradesh (established in 1980). Sprawled across a green 100-acre world-class campus, KL Deemed to be University is providing high-quality undergraduate, postgraduate, doctoral, and post-doctoral study and research programmes in architecture, fine arts, engineering, law, management, humanities and sciences, and pharmacy to around 20,000 students mentored by 1,200 faculty members.

            An alumnus of BMS College of Engineering, Bengaluru, Satyanarayana began his career in 1977 as an entrepreneur (Coastal Cables Pvt. Ltd, Andhra Pradesh). However, his true passion lay in the nurturance and development of KL College of Engineering, which was co-promoted by his father, a successful businessman and philanthropist.

           In 1980, he was appointed as a managing committee member of the family-run Koneru Lakshmaiah Education Foundation (KLEF), which managed the college. At this point, he shifted his prime focus onto educational management.

            Twelve years later, he became chairman, and since then, over the past four decades as KLEF bloomed into a full-fledged university, Satyanarayana became increasingly involved in education management and digitalizing resources. He also played a critical role in establishing a student entrepreneurship cell. In 2009, he became the President of KL Deemed-to-be University.</p>
        </div>

        <div class="section">
            <h3>Vision for the University</h3>
            <p>"My vision for the University is to make it a world-class institution known for its academic excellence, commitment to diversity, inclusion, and impact on society. The University should be a place where all students can thrive, regardless of their background or circumstances. One of our key goals is to strengthen the University’s research and innovation capabilities and position it as a leader in cutting-edge research and development.

It is also essential to ensure that our research has a real impact on the world, addressing some of the most pressing challenges faced by society today. Another goal is to increase the University’s accessibility and affordability, making it within reach of all students and creating a more inclusive campus environment where everyone attains holistic growth.

Finally, we aim to make the University a community where students jointly work to address the challenges faced by communities, societies, cities, and regions. The University is committed to promoting and encouraging expertise and resources to make the world a better place. Together, we can make a real difference in the lives of our students and the world around us."</p>
        </div>

        <div class="section">
            <h3>Promoting Research and Innovation</h3>
            <p>Promoting and supporting research initiatives within the University is vital to our mission. Research is the means by which we push the boundaries of knowledge and make new discoveries, while also preparing our students to be the leaders and innovators of tomorrow.

To further these goals, several strategies are in place. First, there is a commitment to increasing funding for research, with additional resources already allocated to the research budget and a commitment to continued support in the future.

Another key initiative is to cultivate a more supportive environment for researchers, which includes providing access to cutting-edge equipment and facilities, as well as mentorship and training opportunities. Various Centers of Excellence have been established on campus to enable students and faculty to work aggressively in diverse research areas.

Additionally, promoting a collaborative research culture at the University is a priority, encouraging researchers from various disciplines to work together on common problems. To raise the profile of KL Deemed-to-be University’s research, collaboration with media, industry partners, and government agencies will be pursued to highlight the University’s research accomplishments.

Furthermore, researchers will be encouraged to present their work at conferences and publish their findings in top journals. These measures collectively aim to establish KL Deemed-to-be University as a leading research institution on the global stage.</p>
        </div>

        <!-- Honorable Secretary Section -->
        <div class="profile">
            <img src="images/1.jpeg" alt="Smt Koneru Siva Kanchana Latha">
            <h2>Smt Koneru Siva Kanchana Latha</h2>
            <h4>Honorable Secretary</h4>
        </div>

        <div class="section">
            <h3>About the Secretary</h3>
            <p>Smt. Koneru Siva Kanchana Latha is an Indian educationalist, social entrepreneur, and philanthropist dedicated to women's empowerment. Born in 1961 in Vijayawada, Andhra Pradesh, she was raised in a family that valued education and social responsibility. She holds a Bachelor's degree in Home Science from St. Theresa Women’s College and has held leadership roles in various educational institutions.

She is married to Er. Koneru Satyanarayana, President of KLEF, a prominent educational institution, and a noted movie producer and philanthropist. Together, they have founded several non-profit organizations focused on women's education and vocational training.

The couple has three children—Koneru Lakshmana Havish (Purdue University), Koneru Raja Harin (Northwestern University), and Koneru Nikhila Karthikeyan (Leeds University). Their contributions to education and philanthropy have earned them numerous awards, including the Rashtra Vibhushan, Rajiv Gandhi Shiromani, and Mahila Shiromani Awards. Their work continues to inspire many in the fields of education and social welfare.

In conclusion, Kanchana Latha and Satyanarayana are a power couple in the field of education and philanthropy in Andhra Pradesh, India. Their shared vision and dedication to empowering women and promoting education have made a significant impact on society, and their children have followed in their footsteps, pursuing higher education and making a name for themselves in their respective fields. They serve as an inspiration to many, and their work is a testament to the positive impact that can be made through a shared commitment to social welfare.</p>
        </div>
        <div class="section">
        <h3>Contributions At KLEF</h3>
        <p>Kanchana Latha's role as the Secretary of Koneru Lakshmaiah Education Foundation (KLEF) is a prominent member of the foundation's leadership team. KLEF is a pioneering educational institution with campuses in Andhra Pradesh and Telangana, offering a range of courses in sciences, engineering, technology, architecture, pharmacy, agriculture, arts, commerce, management, hotel management, law, and other fields.

KLEF was established as the Koneru Lakshmaiah College of Engineering in 1980, and since then, it has grown to become a deemed-to-be university and a recognized Category 1 institution by the Ministry of Education in India. As the Secretary of KLEF, Kanchana Latha has played a significant role in the institution's growth and development, ensuring that it continues to provide quality education to students from all walks of life.

Kanchana Latha's work in the field of education and social welfare has earned her several accolades, including the Mahila Shiromani Award and the Women Achiever's Award, among others. Her dedication to promoting education and empowering women has inspired many, and she continues to be a beacon of hope for those seeking to make a positive impact on society.

Kanchana Latha's contributions as the Secretary of KLEF. Her efforts in promoting education and social welfare have had a significant impact on society, and her work serves as an inspiration to others who seek to make a positive difference in the world. Through her leadership and dedication, KLEF has become a premier educational institution in India, offering a wide range of courses in various fields and providing quality education to students from diverse backgrounds.</p>
        </div>
        
        <div class="section">
        <h3>Leadership Responsibilities</h3>
        <p>As the Secretary of KLEF, this individual plays a critical role in managing the operations of the foundation. She oversee a range of administrative functions, and guide the teams to develop and implement strategies for the long-term growth and success of the institution. Under Kanchana Latha's leadership, KLEF has also expanded its focus on social responsibility and community development, through various initiatives such as providing education and vocational training to underprivileged women, supporting rural development projects, and promoting environmental sustainability.</p>
        </div>
        
        <div class="section">
        <h3>Foreign Visits</h3>
        <p>Smt. Kanchana Latha is a well-traveled individual with a deep interest in global cultures, education, and environmental conservation. Having visited over 50 countries, she has gained valuable insights into diverse educational systems and women's empowerment.

She has actively participated in national and international conferences on crafts, culture, urban gardening, and women’s health. Her dedication to gender equality and social welfare has earned her numerous accolades, making her a respected figure in education, social entrepreneurship, and philanthropy.</p>
        </div>
        
        <div class="section">
        <h3>Social Memberships</h3>
        <p>Smt. Kanchana Latha is actively involved in social welfare and women’s empowerment through various organizations. She is a member of ALEAP, multiple NGOs in Andhra Pradesh, and Women Empowerment Clubs. She also serves as the Honourable Vice President of the Rose Society and is associated with the Crafts Council of Andhra Pradesh, promoting traditional handicrafts and artisans' livelihoods.

As an AP Craft Council member, she is dedicated to preserving Andhra Pradesh’s cultural heritage, fostering strong relationships, and broadening craft appreciation. Her passion for social welfare and empowerment continues to inspire and create a lasting impact.</p>
        </div>
        
        <div class="section">
        <h3>Key contributor of women technology park</h3>
        <p>Smt. Kanchana Latha Koneru played a key role in establishing the Women Technology Park (2016–2021) at Vaddeswaram, supported by the Ministry of Science and Technology, Government of India. Her design interventions in Kondapalli and Etikkopaka toys significantly boosted production, benefiting local artisans.  

She personally supported training programs for women in rope making, food processing, bio-feed and bio-fertilizer development, cotton weaving, and handloom saree printing. The center is now self-sustained, enhancing women's livelihoods. Her commitment to skill development and women’s empowerment continues to make a lasting impact in Guntur, Andhra Pradesh.</p>
        </div>
        
        <div class="section">
        <h3>Smart village Revolution-Remarkable outcomes</h3>
        <p>Mrs. Kanchana Latha Koneru's contributions to the development of rural communities in Andhra Pradesh are truly remarkable. Her efforts to initiate the Smart Village Revolution as part of the Corporate Social Responsibility (CSR) program of KLEF have led to the transformation of about 90 villages into smart villages.

Under her leadership, these villages have been able to overcome poverty and underdevelopment by adopting innovative solutions in the areas of healthcare, education, sanitation, and technology. In addition to providing hygienic drinking water to these villages, Mrs. Koneru has also facilitated the provision of computer systems and training to Village Panchayat officers, enabling them to speed up their work and deliver better services to the community.

Mrs. Koneru's vision and leadership have been instrumental in driving the Smart Village Revolution program and transforming these villages into models of development. Her commitment to rural communities and her efforts to empower them with the tools and resources they need to thrive are truly inspiring.

Overall, Mrs. Kanchana Latha Koneru's contributions to the development of rural communities through the Smart Village Revolution program are making a significant impact on the lives of many people. Her dedication to improving access to healthcare, education, and technology is empowering communities and providing them with a pathway to a better future. She is a true champion of social responsibility and a role model for those looking to make a positive impact in the world.

Mrs. Koneru's extensive experience across various industries has equipped her with the knowledge and skills to drive positive change and development in the villages adopted by her. She continues to explore new technologies and approaches to create sustainable solutions and promote social and economic progress in these communities.</p>
        </div>
        
        <div class="section">
        <h3>Awards and Honours</h3>
        <p>Mrs. Kanchana Latha Koneru has received numerous national and international awards for her contributions to design, education, and environmental initiatives. Notable accolades include the **Bharat Jyothi Award (1999)**, **Uttama Mahila Award (2021)**, and recognition from **APUGBC** for green initiatives. She was honored by **KL Alumni Groups** and trekked **Nathu La (14,150 ft)** on the Old Silk Route.  

As **Secretary & Spokesperson of KLEF**, she received awards from **MHRD** for Swachhata Rankings (2017–2019) and from **AICTE** for Clean & Green Campus. Her dedication to women's empowerment, education, and sustainability continues to inspire many.</p>
        </div>
        
        <div class="section">
        <h3>CHARITY - VILLAGE ADOPTION AND SOCIAL SERVICE</h3>
        <p>She adopted 8 villages and was instrumental in converting them as smart villages. She supported installation of drip irrigation projects to conserve the water, installation of solar pump sets, and providing solar invertors to avoid unprecedented power cuts, establishing common computer training centres for village students’ education, aid towards of hygienic drinking water and not limited too. She is feeding daily 200 old aged and needy people at her house for last 7 years.</p>
        </div>
        
        <div class="section">
        <h3>CORPORATE PRESENCE</h3>
        <p>Mrs. Kanchana Latha Koneru is an accomplished business leader who has held key positions in a variety of companies and organizations throughout her career. She has always been dedicated to learning new technologies and approaches to implementing positive change in the villages adopted by her, as well as in improving the educational opportunities for the girl and women faculty in her institution.

Mrs. Koneru's diverse professional experience includes serving as

Director of Ind Aqua Ltd
Raja Harin Estates Pvt. Ltd
Surya Havish Estates Pvt. Ltd
Nikhila Estates Pvt. Ltd
Harniks Park Pvt. Ltd, Hyper Clinresea Pvt Ltd
Havish Transport Pvt. Ltd, and ACIC - KL Startups Foundation</p>
        </div>

    </div>
</body>
</html>
