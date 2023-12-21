<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <!-- ... (your existing code) ... -->
</head>
<body>

<%
// Database connection parameters for cart
String cartJdbcUrl = "jdbc:oracle:thin:@localhost:1521:xe";
String cartUsername = "system";
String cartPassword = "admin";

// JDBC connections for cart
Connection cartConnection = null;
PreparedStatement cartStatement = null;

try {
    // Load the JDBC driver for cart
    Class.forName("oracle.jdbc.driver.OracleDriver");

    // Establish the connection for cart
    cartConnection = DriverManager.getConnection(cartJdbcUrl, cartUsername, cartPassword);

    // Prepare a statement for inserting data into the cart table
    String insertQuery = "INSERT INTO cart (email, product_description, product_price, product_image_link) VALUES (?, ?, ?, ?)";
    cartStatement = cartConnection.prepareStatement(insertQuery);

    // Retrieve user email and product details from session
    String userEmail = (String) session.getAttribute("email"); // Use "email" as the attribute name
    if (userEmail == null || userEmail.isEmpty()) {
        out.println("<p>User email not found in session. Please login and try again.</p>");
    } else {
        String productDescription = request.getParameter("productDescription");
        double productPrice = Double.parseDouble(request.getParameter("productPrice"));
        String productImageLink = request.getParameter("productImageLink");

        // Set values for the cart statement
        cartStatement.setString(1, userEmail);
        cartStatement.setString(2, productDescription);
        cartStatement.setDouble(3, productPrice);
        cartStatement.setString(4, productImageLink);

        // Execute the insert query
        int rowsAffected = cartStatement.executeUpdate();

        if (rowsAffected > 0) {
            out.println("<p>Successfully added to cart!</p>");
        } else {
            out.println("<p>Failed to add to cart. Please try again.</p>");
        }
    }

} catch (Exception e) {
    e.printStackTrace();
} finally {
    // Close the resources for cart
    try {
        if (cartStatement != null) cartStatement.close();
        if (cartConnection != null) cartConnection.close();
    } catch (SQLException e) {
        e.printStackTrace();
    }
}
%>

</body>
</html>
