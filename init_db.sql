BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "education" (
	"id"	INTEGER NOT NULL UNIQUE,
	"school"	TEXT NOT NULL,
	"degree"	TEXT NOT NULL,
	"major"	TEXT NOT NULL,
	"CGPA"      DOUBLE NOT NULL,
	"Achievements" TEXT NOT NULL,
	"RelevantCourses" TEXT NOT NULL,
	"start_date"	INTEGER,
	"end_date"	INTEGER,
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "work_experience" (
	"id"	INTEGER,
	"company"	TEXT NOT NULL,
	"title"	TEXT NOT NULL,
	"start_date"	DATE,
	"end_date"	DATE,
	"description"	TEXT,
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "skills" (
	"id"	INTEGER,
	"name"	TEXT NOT NULL,
	"type"	TEXT NOT NULL,
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "projects" (
	"id"	INTEGER,
	"name"	TEXT NOT NULL,
	"description"	TEXT NOT NULL,
	"skills"	TEXT NOT NULL,
	"start_date"	DATE,
	"end_date"	DATE,
	"URL"	TEXT,
	PRIMARY KEY("id")
);
INSERT INTO "education" VALUES (1,'University of Toronto','Master of Engineering','Computer Engineering','3.7/4.0', 'Complete 2-year Master of Engineering program in just 8 months', 'Machine Learning. Cloud Computing. Algorithms and Data Structures. Cloud-Based Data Analytics. Artificial Intelligence in Finance. Bio-inspired Algorithms for Smart Mobility','2022-09-01','2023-04-30');
INSERT INTO "education" VALUES (2,'Carleton University','Bachelor of Engineering','Software Engineering','3.8/4.0','Graduated with Distinction. 2021-2022 Deans’ Honour List. Volunteer Notetaker (2020). Co-op Working Experience at Bell FoNSE QA Team (2020)', 'Object-Oriented Software Development. Algorithms and Data Structures. Database Management Systems. Software Development Project. Real-Time Concurrent Systems. Software Product Management. Software Validation. Software Architecture and Design','2017-09-01','2022-04-30');
INSERT INTO "work_experience" VALUES (1,'Bell Media Inc.','Quality Assurance Specialist (Co-op)','2020-01-01','2020-12-31','Spearheaded executing over 1200 software tests leading to smooth release of Bell Streamer product. Verified critical app functionality by conducting comprehensive testing for 20+ software releases. Resolved 300+ software defects through detailed bug reporting, increasing customer satisfaction. Onboarded and mentored new co-op hires, reducing overall onboarding time from 1 month to 2 weeks. Prevented customer impacting issues by addressing 30+ Android defects found via robust ADB testing. Sustained agile collaboration for on-time delivery during remote work transition in pandemic.');
INSERT INTO "skills" VALUES (1,'Java','Language');
INSERT INTO "skills" VALUES (2,'Python','Language');
INSERT INTO "skills" VALUES (3,'SQL','Language');
INSERT INTO "skills" VALUES (4,'C#','Language');
INSERT INTO "skills" VALUES (5,'Go','Language');
INSERT INTO "skills" VALUES (6,'Racket','Language');
INSERT INTO "skills" VALUES (7,'C','Language');
INSERT INTO "skills" VALUES (8,'C++','Language');
INSERT INTO "skills" VALUES (9,'Spring Boot','Framework');
INSERT INTO "skills" VALUES (10,'Flask','Framework');
INSERT INTO "skills" VALUES (11,'Data Structures','Concept');
INSERT INTO "skills" VALUES (12,'Thread','Concept');
INSERT INTO "skills" VALUES (13,'OOP Design','Concept');
INSERT INTO "skills" VALUES (14,'Networking Protocals (UDP, TCP/IP)','Concept');
INSERT INTO "skills" VALUES (15,'Software Architecture','Concept');
INSERT INTO "skills" VALUES (16,'Cloud Architecture','Concept');
INSERT INTO "skills" VALUES (17,'Git','Tools');
INSERT INTO "skills" VALUES (18,'JUnit','Tools');
INSERT INTO "skills" VALUES (19,'Pytorch','Tools');
INSERT INTO "skills" VALUES (20,'CI/CD pipelines','Tools');
INSERT INTO "skills" VALUES (21,'Jira','Tools');
INSERT INTO "skills" VALUES (22,'Trello Board','Tools');
INSERT INTO "skills" VALUES (23,'Slack','Tools');
INSERT INTO "skills" VALUES (24,'VS code','Tools');
INSERT INTO "skills" VALUES (25,'Eclipse','Tools');
INSERT INTO "skills" VALUES (26,'Firebase','Tools');
INSERT INTO "skills" VALUES (27,'AWS','Cloud');
INSERT INTO "skills" VALUES (28,'Azure','Cloud');
INSERT INTO "skills" VALUES (29,'Vercel','Cloud');
INSERT INTO "skills" VALUES (30,'Heroku','Cloud');
INSERT INTO "skills" VALUES (31,'PostgreSQL','Databases');
INSERT INTO "skills" VALUES (32,'MySQL','Databases');
INSERT INTO "skills" VALUES (33,'ORM','Databases');
-- AWS Image Host
INSERT INTO "projects" VALUES (
    1,
    'AWS Image Host',
    'Designed and built full-stack image hosting web app in Python/Flask, allowing users to upload, store, and retrieve images efficiently. Optimized performance by implementing Memcached to reduce database reads by up to 50%. Demonstrated Agile methodology development skills to quickly build feature-rich web applications within 3 months. Scaled web application on AWS by leveraging services like EC2, S3, RDS, and Lambda to improve resilience and efficiency and achieve seamless storage, computing, and networking. Transformed core functions to AWS Lambda serverless architecture, ensuring scalability and cost efficiency. Utilized AWS Rekognition for image labeling, enabling automatic tagging to improve user experience.',
    'Python, Flask, AWS',
    '2022-09-01',
    '2022-12-31',
    'https://github.com/ECE1779BestGroup/ECE1779-Project3.git'
);

-- Security Evaluations Management Platform
INSERT INTO "projects" VALUES (
    2,
    'Security Evaluations Management Platform',
    'Designed UML and ER diagrams to model system architecture and plan database structure, demonstrating analytical skills to boost agile methodology development efficiency. Developed and integrated PostgreSQL database with Flask back-end to enable secure user authentication and data management, leveraging SQL and Python. Implemented Flask web application with Python, integrating Flask extensions like Flask-Login and Flask-Migrate to build feature-rich and scalable software. Deployed full-stack web application on Heroku server for online access, exhibiting the ability to develop and deploy cloud-based solutions. Created CI/CD pipeline with CircleCI for automatic testing and delivery of product versions, underscoring understanding of agile, DevOps methodologies.',
    'Python, Flask, PostgreSQL, CI/CD pipelines, Heroku',
    '2021-09-01',
    '2022-04-30',
    'https://github.com/Security-Evaluations-Management/ManageYourSecurityEvaluations.git'
);

-- Mini-Monkey Survey
INSERT INTO "projects" VALUES (
    3,
    'Mini-Monkey Survey',
    'Designed UML diagrams and ER database schema to model robust system architecture enabling agile methodology development of a Java SpringBoot web application. Developed full-stack functionalities implementing MVC structure and CRUD operations for survey creation, storage, and automated multi-format visualization. Created a user-friendly interface with a dynamic display of survey results in charts/graphs using Chart.js for superior survey taker experience. Leveraged CircleCI to deploy automated CI/CD pipeline tests and one-click Heroku deployment showcasing DevOps abilities. Collaborated as part of an agile team to architect, design, develop, and deploy a production-ready web application in less than 3 months. Achieved over 90% client satisfaction score in user testing for an intuitive interface and impactful visual report functionalities.',
    'Java, SpringBoot, CI/CD pipelines, Heroku',
    '2022-01-01',
    '2022-04-30',
    'https://github.com/SYSC-4806-Proj/Mini-SurveyMonkey.git'
);

-- Manufacturing Facility Simulation
INSERT INTO "projects" VALUES (
    4,
    'Manufacturing Facility Simulation',
    'Led the development of a discrete simulation app in Python to optimize plant operational efficiency. Implemented an innovative strategy, significantly enhancing the factory''s production efficiency. Utilized statistical techniques, including Cumulative Distribution Functions (CDF), for realistic input model validation. Conducted continuous simulations to analyze steady-state properties, ensuring robust results. Generated detailed simulation system reports, aiding in the selection of efficient operational policies.',
    'Python, Simulation, CDF',
    '2022-01-01',
    '2022-04-30',
    'https://github.com/Manufacturing-Facility/Manufacturing-Facility.git'
);

-- Bookstore Application
INSERT INTO "projects" VALUES (
    5,
    'Bookstore Application',
    'Conceptualized and executed a Java-based bookstore application with user-centric functionalities. Designed and implemented a robust database system for necessary data for the bookstore. Ensured smooth interaction with the backend logic using Java and JDBC technologies proficiently. Emphasized user experience by developing efficient search, order placement, and tracking features. Contributed to the development of a scalable and maintainable software solution.',
    'Java, JDBC, Database',
    '2021-09-01',
    '2021-12-31',
    'https://github.com/Mario760/COMP3005FinalProject.git'
);

-- Elevator Simulation System
INSERT INTO "projects" VALUES (
    6,
    'Elevator Simulation System',
    'Designed and developed a concurrent multi-threaded elevator simulation system in Java using test-driven development. Engineered algorithms for efficient elevator assignment and optimization of transport times. Implemented communication between subsystems through UDP, enabling seamless operation in diverse environments. Incorporated load balancing and fault tolerance for maximized reliability. Demonstrated effective virtual collaboration during pandemic conditions. Emphasized knowledge of networks, algorithms, and design patterns for robust solutions.',
    'Java, Networking, Threads',
    '2021-01-01',
    '2021-04-30',
    'https://github.com/peymantajadod/SYSC3303_Project.git'
);
COMMIT;
