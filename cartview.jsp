<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Show Cart</title>
    <!-- Add any necessary styles or scripts -->
</head>
<body>

<%
// Database connection parameters for cart
String cartJdbcUrl = "jdbc:oracle:thin:@localhost:1521:xe";
String cartUsername = "system";
String cartPassword = "admin";

// JDBC connections for cart
Connection cartConnection = null;
PreparedStatement cartPreparedStatement = null;
ResultSet cartResultSet = null;

try {
    // Load the JDBC driver for cart
    Class.forName("oracle.jdbc.driver.OracleDriver");

    // Establish the connection for cart
    cartConnection = DriverManager.getConnection(cartJdbcUrl, cartUsername, cartPassword);

    // Create a prepared statement for fetching data from the cart table
    String cartQuery = "SELECT * FROM cart WHERE email = ?";
    cartPreparedStatement = cartConnection.prepareStatement(cartQuery);
    String userEmail = (String) session.getAttribute("email"); // Retrieve user email from the session

    if (userEmail != null && !userEmail.isEmpty()) {
        cartPreparedStatement.setString(1, userEmail);
        cartResultSet = cartPreparedStatement.executeQuery();

        // Display cart items
        while (cartResultSet.next()) {
            String productDescription = cartResultSet.getString("product_description");
            double productPrice = cartResultSet.getDouble("product_price");
            String productImageLink = cartResultSet.getString("product_image_link");

            // Display cart item information
            out.println("<div>");
            out.println("<img src='" + productImageLink + "' alt='Product Image'>");
            out.println("<p>Description: " + productDescription + "</p>");
            out.println("<p>Price: $" + productPrice + "</p>");

            // Button for placing order for individual product
            out.println("<form action='placeOrder.jsp' method='post'>");
            out.println("<input type='hidden' name='productDescription' value='" + productDescription + "'>");
            out.println("<input type='hidden' name='productPrice' value='" + productPrice + "'>");
            out.println("<input type='hidden' name='productImageLink' value='" + productImageLink + "'>");
            out.println("<input type='submit' value='Place Order'>");
            out.println("</form>");

            out.println("</div>");
        }
    } else {
        // Display a message if the user is not logged in
        out.println("<p>User not logged in. Please log in to view the cart.</p>");
    }

} catch (Exception e) {
    e.printStackTrace();
} finally {
    // Close the resources for cart
    try {
        if (cartResultSet != null) cartResultSet.close();
        if (cartPreparedStatement != null) cartPreparedStatement.close();
        if (cartConnection != null) cartConnection.close();
    } catch (SQLException e) {
        e.printStackTrace();
    }
}
%>

</body>
</html>
