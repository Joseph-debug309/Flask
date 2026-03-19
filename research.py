# Below is the route for fetching products
@app.route("/api/get_products")
def get_products(product_id):

    # Create a connection with the database#
    connection = pymysql.connect(host="localhost",user="root",password ="",database="sokogardenonline")

    # We create a cursor
    cursor = connection.cursor(pymysql.cursors.DictCursor)

    # We structure a query to fetch all products from the table product details
    sql = "Select * FROM product_details WHERE product_id=%s"

    # Excecute the query
    cursor.execute(sql,(product_id,))

    # Create a variable that will hold the data fetched from the table
    products = cursor.fetchone()


    return jsonify(products)