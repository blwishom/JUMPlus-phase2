from flask import Flask
from flask_sqlalchemy import SQLAlchemy

db = SQLAlchemy()

app = Flask(__name__)

app.config["SQLALCHEMY_DATABASE_URI"] = "sqlite:///bims.db"

db.init_app(app)

class Author(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String)

class Category(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String, nullable=False)

class Book(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String)
    author_id = db.Column('author_id', db.Integer, db.ForeignKey("author.id"))
    category_id = db.Column('category_id', db.Integer, db.ForeignKey("category.id"))
    author = db.relationship('Author', backref="book")
    category = db.relationship("Category", backref="book")

    def __str__(self):
        return f"Name: {self.name}, Author: {self.author.name}"

with app.app_context():
    db.create_all()

    books = db.session.execute(db.select(Book)).scalars()
    for book in books:
        print(book)