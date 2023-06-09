# Dining-System
Technologies used to design the system :
-	MySQL
-	Python -flask

Steps to run the project:
-	Create the database from the included scripts and begin the server
-	Unzip the project file and navigate into code folder
-	Change any Mysql server connection string in app.py file on line 24
-	Open powershell/command prompt and run pip install -r requirements.txt
-	Run the following commands
$env:FLASK_APP = "app"
$env:FLASK_ENV = "development"
$flask run
