from flask import Flask, request, jsonify
from datetime import datetime 
import connection as conn
import query_data as db

app = Flask(__name__)

@app.route("/hello/<name>", methods=["GET"])
def say_hello(name):
    return f"Hello {name}"

@app.route("/about")
def about():
    print(request.args)
    return "about me"

@app.route("/login", methods=["GET", "POST"])
def login():
    if request.method == "GET":
        return f"Please Log in"
    elif request.method == "POST":
        print(request)
        print(request.json)
        if request.json["username"] == "Hello" and request.json["password"] == "World":
            return "Thank you for logging in"
        else:
            return "Incorrect Username or Password"

@app.route("/date/today")
def send_date():
    today = datetime.now()
    data = {
        "day": today.day,
        "month": today.month,
        "year": today.year
    }
    # return f"<h1>{today}</h1>"
    return jsonify(data)

@app.route("/book")
def books():
    books = db.all_books(conn.create_connection("bims.db"))

    return jsonify(books)

if __name__ == "__main__":
    app.run(debug=True)