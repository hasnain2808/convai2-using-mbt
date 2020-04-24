# Importing flask module in the project is mandatory 
# An object of Flask class is our WSGI application. 
from flask import Flask, render_template, request
from markupsafe import Markup

# Flask constructor takes the name of  
# current module (__name__) as argument. 
app = Flask(__name__) 
  
# The route() function of the Flask class is a decorator,  
# which tells the application which URL should call  
# the associated function. 
@app.route('/', methods=['POST', 'GET']) 
# ‘/’ URL is bound with hello_world() function. 
def home(): 
    return render_template('chat.html')

# def sentdata():
# 	text = request.form["textdata"]
# 	return Markup(message)

# @app.route('/sentdata', methods=['POST', 'GET'])
# def sentdata():
# 	text = request.form["textdata"]
# 	render_template('chat.html')
# 	message =  '<div class="outgoing_msg"><div class="sent_msg"><p>'+str(text)+'</p><!--<span class="time_date"> 11:01 AM    |    Today</span>  --></div></div>'
# 	return Markup(message)

# main driver function 
if __name__ == '__main__': 
  
    # run() method of Flask class runs the application  
    # on the local development server. 
    app.run(port = 5001) 
