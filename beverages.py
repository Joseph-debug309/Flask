# Import flask framework
from flask import *

# Import the os
import os

import pymysql



# create the flask application
app = Flask(__name__)


# configure the location to where your product images will be saved on your application
app.config["UPLOAD_FOLDER"] = "dynamic"


# creating the route
@app.route("/api/beverages", methods=["POST"])
def beverages():

    # Extracting data from forms
    if request.method == "POST":
        name = request.form["name"]
        brand = request.form["brand"]
        volume = request.form["volume"]
        expiry = request.form["expiry"]
        price= request.form["price"]
        stock = request.form["stock"]
        photo = request.files["photo"]

         # extract the filename of the product photo
        filename = photo.filename

        # By use of the OS module, we can extract the file path where the image is currently saved.
        photo_path = os.path.join(app.config["UPLOAD_FOLDER"], filename)

        # save the product photo to the new location
        photo.save(photo_path)

         # establish a connection to the db
        connection = pymysql.connect(host = "localhost", user = "root", password ="", database = "online")

        #create a cursor
        cursor = connection.cursor()

        #print(name, brand, volume, expiry, price, stock, photo)

         #structure the sql query that will insert the product details to the database
        sql = "INSERT INTO beverages(name, brand, volume, expiry, price, stock, photo) VALUES (%s, %s, %s, %s, %s, %s, %s)"

         # create a tuple that will hold data from the current held onto the diffrent variables declared
        data = (name, brand, volume, expiry, price, stock, filename)

        #use the cursor to execute the sql as you replace the placeholders with the actual data.
        cursor.execute(sql, data)

        # commit changes to the database
        connection.commit()

        return jsonify({"message" : "added sucessfully"})










app.run(debug=True)