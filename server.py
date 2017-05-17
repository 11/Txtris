'''
Author: Douglas Rudolph
File: Server.py
Date Created: May 16, 2017
Project: Txtris
'''

#Flask is a web-server framework designed to be lightweight and easy to implement
from flask import Flask, request

#Twiml is a library that extracts data from the text form of text messsges and more
from twilio import twiml 

#list of buttons that people can enter
buttons = ['A', 'B', 'up', 'down', 'left', 'right', 'start']

#creates an instance of a flask app
app = Flask(__name__)

#'handle_txt' is triggered when ever someone txts Twilio phone number
@app.route("/sms", methods=["POST"])
def handle_txt():
    
    message_body = request.form['Body'] 
   
    #if 'a' or 'b' are preseed, make them uppercase so the emulator understands
    if len(message_body) == 1:
        message_body = message_body.upper()
    
    #else, make all other messages lowercase
    else:
        message_body = message_body.lower()
    
    #if what the user texted is in the list, write the input to buttons.txt
    if message_body in buttons:
        print(message_body)
        f = open('button.txt', 'w')
        f.write(str(message_body))
        f.close()
    
    #return an empty string (something must be returned on POST request)
    return ""

#runs the program on port 8080 on local machine 
if __name__ == "__main__":
    app.run(host="0.0.0.0", port="8080")
