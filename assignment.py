#importing flask framework
from flask import *


app = Flask(__name__)


# create a route that is able to calculate the simple interest given the pricipal as 20000, rate as 7% and time as 8 years.
@app.route("/api/simple_calculator" , methods=["POST"])
def simple_calculator():
    if request.method == "POST":
        principal = request.form["principal"]
        rate = request.form["rate"]
        time = request.form["time"]
        SI = (int(principal) * int(rate) * int(time)) / 100
        return jsonify({"the answer is" : SI})




#to run the app
app.run(debug = True)