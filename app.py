#Import the flask framework
from flask import *




#Below we  create a web server based application
app = Flask(__name__)

#below we create the home route.
#Routing is mapping/connecting diffrent resources using diffrent functions. We do this by the help of a decorator.
@app.route("/api/home")
def home():
    return jsonify({"message" : "Home route access"})




#Below is the products route
@app.route("/api/products")
def products():
    return jsonify({"message" : "welcome to products route"})





#Below is a route for addition
@app.route("/api/calc", methods=["POST"])
def calculator():
    if request.method == "POST":
        number1 = request.form["number1"]
        number2 = request.form["number2"]
        sum = int(number1) + int(number2)
        return jsonify({"The answer is" : sum})









#Below runs the application
app.run(debug=True)

