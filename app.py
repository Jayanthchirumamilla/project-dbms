from flask import Flask, render_template, request
import mysql.connector 

app = Flask(__name__)


def fetch_data(Order_ID="", Product_name="", Product_det="", Product_id_del=""):
    
    cnx = mysql.connector.connect(user='root', password='123456789',
                              host='localhost', database='furniture')

# Create a cursor object to execute queries
    cursor = cnx.cursor()
    
    if len(Order_ID)>=1:
        query = """
        SELECT 
    Orders.OrderID,
    Customers.FirstName,
    Customers.LastName,
    Customers.Email,
    Products.ProductName,
    Products.Description,
    OrderDetails.Quantity,
    OrderDetails.Price,
    Orders.OrderDate,
    Orders.ShippingAddress
    
    FROM OrderDetails
    INNER JOIN Orders ON OrderDetails.OrderID = Orders.OrderID
    INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID
    INNER JOIN Products ON OrderDetails.ProductID = Products.ProductID
    WHERE OrderDetails.OrderID = {Id};
        
        """

        main_query = query.format(Id=Order_ID)
        cursor.execute(main_query)
        rows = cursor.fetchall()
        print(rows)
        sequence = cursor.column_names
        main_data = []
        print(main_data)
        for result in rows:
            main_data.append(result)
        print(main_data)
        return(sequence, tuple(main_data))
        
    # get all the employee salaries greater than given input
    if len(Product_name)>=1:
        query = """

        Select * from Products
        where Products.ProductID = {Id};
        
        """
        main_query = query.format(Id=Product_name)
        cursor.execute(main_query)
        rows = cursor.fetchall()
        print(rows)
        sequence = cursor.column_names
        main_data = []
        print(main_data)
        for result in rows:
            main_data.append(result)
        print(main_data)
        return(sequence, tuple(main_data))
    
    if len(Product_det)>1:
        Name, Descrption, Price, Category= Product_det.split(",")
        query = """
        INSERT INTO Products (ProductName, Description, Price, Category) VALUES
        ({Name},{Description},"{Price}","{Category}");
        """
        main_query = query.format(Name=Name, Description = Descrption, Price = Price, Category = Category)
        cursor.execute(main_query)
        cnx.commit()

        query = """
        select * from Products;
        """
        cursor.execute(query)
        rows = cursor.fetchall()
        print(rows)
        sequence = cursor.column_names
        main_data = []
        print(main_data)
        for result in rows:
            main_data.append(result)
        print(main_data)
        return(sequence, tuple(main_data))
    
    if len(Product_id_del)>=1:
         
        query = """

        Delete from Products
        where Products.ProductID = {Id};
        
        """

        main_query = query.format(Id=Product_id_del)
        cursor.execute(main_query)
        cnx.commit()

        query = """
        select * from Products;
        """
        cursor.execute(query)
        rows = cursor.fetchall()
        print(rows)
        sequence = cursor.column_names
        main_data = []
        print(main_data)
        for result in rows:
            main_data.append(result)
        print(main_data)
        return(sequence, tuple(main_data))
    
@app.route("/", methods =["GET", "POST"])
def index():
    if request.method == "POST":
        Order_ID = request.form['Order_ID']
        Product_name = request.form['Product_name']
        Product_det = request.form['Product_det']
        Product_id_del = request.form['Product_id_del']
        headings, data = fetch_data(Order_ID, Product_name, Product_det, Product_id_del)
        return render_template("Main_page.html", headings=headings, data=data)
    return render_template("Main_page.html")


if __name__=="__main__":
    app.run(debug=True)