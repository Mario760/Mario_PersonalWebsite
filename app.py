import collections
import os
from flask import Flask, render_template
# from flask_mail import Mail, Message
from flask_migrate import Migrate
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy import inspect, text
from config import Config  # Assuming you have a config.py
from model import Project, Skill, WorkExperience, Education

app = Flask(__name__, instance_path='/tmp')
app.config.from_object(Config)  # Load configuration
# adding configuration for using a sqlite database
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///resume_info.db'
db = SQLAlchemy(app)
migrate = Migrate(app, db)
# mail = Mail(app)


def initialize_database():
    # Check if the tables exist
    with app.app_context():
        inspector = inspect(db.engine)
        if not inspector.has_table('projects'):
            # If not, create the tables
            db.create_all()

            # Execute the SQL file
            sql_file_path = os.path.join(os.path.dirname(__file__), 'init_db.sql')
            with open(sql_file_path, 'r') as sql_file:
                # Split the SQL file content into individual statements
                sql_statements = sql_file.read().split(';')

                for statement in sql_statements:
                    if statement.strip():  # Skip empty statements
                        sql_content = text(statement)
                        db.session.execute(sql_content)

            db.session.commit()

# Call the initialize_database function before running the app
initialize_database()

@app.route('/')
def index():
    return render_template('index.html')


@app.route('/projects')
def projects():
    prj = db.session.query(Project).all()

    for project in prj:
        project.start_date = project.start_date.strftime("%Y-%m")

        if project.end_date:
            project.end_date = project.end_date.strftime("%Y-%m")
        else:
            project.end_date = 'CUR'

    return render_template('projects.html', projects=prj)


@app.route('/about')
def about():
    skills = db.session.query(Skill).all()
    return render_template('about.html', skills=skills)

@app.route('/education')
def edu():
    edus = db.session.query(Education).all()
    for e in edus:
        e.start_date = e.start_date.strftime("%Y-%m")
        e.end_date = e.end_date.strftime("%Y-%m")
    return render_template('edu.html', education_entries=edus)

@app.route('/work')
def work():
    works = db.session.query(WorkExperience).all()
    for w in works:
        if w.end_date:
            w.end_date = w.end_date.strftime("%Y-%m")
        else:
            w.end_date = 'CUR'
    return render_template('work.html', works=works)

# # ... Add routes for contact form, etc., if needed
# @app.route('/contact', methods=['GET', 'POST'])
# def contact():
#     if request.method == 'POST':
#         name = request.form['name']
#         email = request.form['email']
#         message = request.form['message']
#
#         msg = Message('Contact Form Submission', sender=email, recipients=[app.config['MAIL_USERNAME']])
#         msg.body = f"From: {name} <{email}>\n\nMessage:\n{message}"
#         mail.send(msg)
#
#         return render_template('about.html', msg_sent=True)
#     else:
#         return render_template('about.html', msg_sent=False)
