import os
from flask import Flask

app = Flask(__name__)

@app.route("/")
def start_route():
    return "<p>Simple Flask Application</p>"