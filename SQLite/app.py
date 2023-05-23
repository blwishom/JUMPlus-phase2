from flask import Flask, request

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
            return "Thank you for loggin in"
        else:
            return "Incorrect Username or Password"

if __name__ == "__main__":
    app.run(debug=True)
