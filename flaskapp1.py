from flask import Flask
app = Flask(__name__)

@app.route('/')
def home():
    return 'Node1: You used Basic Auth. Good job!'
