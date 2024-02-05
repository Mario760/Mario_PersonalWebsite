from flask_sqlalchemy import SQLAlchemy

db = SQLAlchemy()


class Project(db.Model):
    __tablename__ = "projects"
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String, nullable=False)
    description = db.Column(db.String, nullable=False)
    skills = db.Column(db.String, nullable=False)
    start_date = db.Column(db.Date)
    end_date = db.Column(db.Date)
    URL = db.Column(db.String)


class Skill(db.Model):
    __tablename__ = "skills"
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String, nullable=False)
    type = db.Column(db.String, nullable=False)


class Education(db.Model):
    __tablename__ = "education"
    id = db.Column(db.Integer, primary_key=True)
    school = db.Column(db.String, nullable=False)
    degree = db.Column(db.String, nullable=False)
    major = db.Column(db.String, nullable=False)
    CGPA = db.Column(db.Float, nullable=False)
    Achievements = db.Column(db.String, nullable=False)
    RelevantCourses = db.Column(db.String, nullable=False)
    start_date = db.Column(db.Date)
    end_date = db.Column(db.Date)


class WorkExperience(db.Model):
    __tablename__ = "work_experience"
    id = db.Column(db.Integer, primary_key=True)
    company = db.Column(db.String, nullable=False)
    title = db.Column(db.String, nullable=False)
    start_date = db.Column(db.Date)
    end_date = db.Column(db.Date)
    description = db.Column(db.Text)