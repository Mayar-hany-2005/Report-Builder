# Report-Builder

🎬 MovieDB Report Builder Project – Data Voviz
Interactive Film Report using SQL Server & SSRS Report Builder

📌 Overview:
This project is part of my training at Housing and Development Bank – Business Intelligence Department, where I designed a full data reporting solution to analyze global movie data using Microsoft Report Builder (SSRS).

🔧 Tools & Technologies:
SQL Server Management Studio (SSMS)

Microsoft Report Builder (RDL file)

XML (Report Definition Language)

SQL (DDL & DML)

Data Modeling & Visualization

📁 Project Structure:


📂 MovieDB-Report
├── scripts/

│   ├── create_tables.sql

│   └── insert_data.sql

├── report/

│   └── movies.rdl

├── screenshots/

│   ├── report_view.png

│   └── chart_example.png

└── README.md


🧠 Dataset Summary:
Data was created manually to simulate a realistic movie database with the following tables:

Movies

Genres

Studios

Countries

Certificates

The data includes columns like:

Title, ReleaseDate, RunTimeMinutes, OscarWins, StudioName, GenreName, CountryName, CertificateType

📊 Report Insights (from the chart):
🎖 Most movies in the dataset won Oscars. Surprisingly, The Shawshank Redemption didn’t win any despite its fame.

🎥 Sci-Fi was the most dominant and successful genre, especially in Christopher Nolan's work.

🔢 The PG-13 rating was the most common — balancing wide reach with engaging content.

🧭 The top-producing country was the USA, followed by New Zealand and South Korea.

⏱ Biopics and Sci-Fi movies tend to have the longest durations.

🏆 Titanic stood out with 11 Oscars, directed by James Cameron.

📈 Features of the Report:
Dynamic Tablix table with sortable, formatted data

Visual charts to represent trends in genres, awards, and countries

Built-in filters to analyze by genre or rating

Export-ready design (PDF, Excel)

🚀 How to Run:


Import create_tables.sql and insert_data.sql into your SQL Server.

Open movies.rdl in Microsoft Report Builder.

Connect to your local SQL Server and run the report.


💬 Contact:
For questions or feedback, feel free to connect on LinkedIn
Or check out my Portfolio

🏷 Tags:
#SQL #SSRS #DataAnalysis #ReportBuilder #BusinessIntelligence #BI #MovieData #StudentProjects

