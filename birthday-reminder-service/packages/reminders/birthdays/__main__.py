from flask import Flask, render_template

app = Flask(__name__)

@app.route("/")
def home():
    reminders = [
        {"name": "Alice", "date": "2025-07-01"},
        {"name": "Bob", "date": "2025-07-15"},
        {"name": "Charlie", "date": "2025-07-30"}
    ]
    return render_template("index.html", reminders=reminders)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)

