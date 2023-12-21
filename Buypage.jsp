<%@ page import="java.sql.*, java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Product List</title>
    <style>
        .product-container {
            border: 1px solid #ccc;
            padding: 10px;
            margin: 10px;
            width: 200px;
            float: left;
        }

        .product-container img {
            max-width: 100%;
            height: auto;
        }
    </style>
</head>
<body>

<div>
    <h2>Product List</h2>

    <% 
    // Database connection parameters
    String jdbcUrl = "jdbc:oracle:thin:@localhost:1521:xe";
    String username = "system";
    String password = "admin";

    // JDBC connection
    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;

    try {
        // Load the JDBC driver
        Class.forName("oracle.jdbc.driver.OracleDriver");

        // Establish the connection
        connection = DriverManager.getConnection(jdbcUrl, username, password);

        // Create a statement
        statement = connection.createStatement();

        // Execute a query to fetch data from the products table
        String query = "SELECT * FROM products";
        resultSet = statement.executeQuery(query);
		
		if (!resultSet.isBeforeFirst()) {
		    System.out.println("No rows in the result set");
		} else {
		    System.out.println("Rows in the result set");
		}
		
        // Iterate through the result set and display product information
		while (resultSet.next()) {
		    String imageLink = resultSet.getString("image_link");
		    String description = resultSet.getString("description");
		    double price = resultSet.getDouble("price");

		    // Display product information in a container with "Add to Cart" button
		    out.println("<div class='product-container'>");
		    out.println("<img src='" + imageLink + "' alt='Product Image'>");
		    out.println("<p>Description: " + description + "</p>");
		    out.println("<p>Price: $" + price + "</p>");

		    // Add an "Add to Cart" button for each product
		    out.println("<form action='cart.jsp' method='post'>");
		    out.println("<input type='hidden' name='productDescription' value='" + description + "'>");
		    out.println("<input type='hidden' name='productPrice' value='" + price + "'>");
		    out.println("<input type='hidden' name='productImageLink' value='" + imageLink + "'>");
		    out.println("<input type='submit' name='addToCartButton' value='Add to Cart'>");
		    out.println("</form>");

		    out.println("</div>");
		}

    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        // Close the resources
        try {
            if (resultSet != null) resultSet.close();
            if (statement != null) statement.close();
            if (connection != null) connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    %>

</div>

</body>
</html>
