import flask
from flask import request, jsonify
from flask import Flask, render_template, request
import requests
app = flask.Flask(__name__)

@app.route('/', methods=['GET'])
def home():
    requests.get('http://127.0.0.1:5000/gen_personality' )

    return render_template('widgets.html')



@app.route('/new_message', methods=['GET', 'POST'])
def new_message():
    raw_text = "Nothing received"
    if 'input_dialogue' in request.args:
        raw_text = str(request.args['input_dialogue'])

    x = requests.get('http://127.0.0.1:5000/', params={ "input_dialogue" : raw_text} )

    return x.content
app.run(port=5001)
