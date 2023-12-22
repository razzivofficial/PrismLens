<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- favicon -->
    <link rel="icon" type="image/png" sizes="32x32" href="./resources/Logo/favicon-32x32.png" />
    <!-- styesheet css -->
    <link rel="stylesheet" href="./src/css/style.css" />
    <!-- font awesome -->
    <script src="https://kit.fontawesome.com/ddac256733.js" crossorigin="anonymous"></script>
    <!-- bootstrap css -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <!-- icon link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" />
    <!-- chatbot -->
    <link rel="stylesheet" href="src/css/chat.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <title>PrismLens</title>
</head>
<body>


    <div id="header" class="header">
        <div class="start">
            <img src="./resources/Logo/PrismLensLogo.png" class="logo" />
        </div>
        <div class="search-bar">
            <input type="text" class="search-input" placeholder="What are you looking for .....">
            <i class="fa-solid fa-magnifying-glass fa-sm" id="search-icon"></i>
            <!-- <i class="fa-solid fa-microphone-slash fa-sm" id="mic-icon"></i> -->
        </div>
        <div class="end">
            <nav>
                <ul id="card">
                    <li class="btnhover" onclick="togglePopupsignup()" id="largescreen">
                        Logout<span></span><span></span><span></span><span></span>
                    </li>
                    <div class="overlaysignup" onclick="togglePopupsignup()"></div>
                    <div id="signup-popup">
                        <div id="signup-form">
                            <h2>Logout</h2>
                            <form action="logout.jsp" method="post">
                                <h2>Are you sure logout</h2>
                                <button type="submit">Logout</button>
                            </form>
                        </div>
                    </div>
                    <i class="fas fa-times" id="stop" onclick="closemenu()"></i>
                    <li class="btnhover" onclick="trackorder()" id="largescreen">
                        Order<span></span><span></span><span></span><span></span>
                    </li>
                    <li class="btnhover" onclick="" id="largescreen">
                        wishlist<span></span><span></span><span></span><span></span>
                    </li>
                    <li class="btnhover" onclick="" id="largescreen">
                        <a href="cartview.jsp">Cart</a><span></span><span></span><span></span><span></span>
                    </li>
                    <!-- responsive part right side navbar -->
                    <li class="sidemenu">
                        <button class="btn btn5" onclick="togglePopupsignup()">
                            Logout
                        </button>
                    </li>
                    <li class="sidemenu"><a href="#trackorder">Track Order</a></li>
                    <li class="sidemenu">
                        <i class="fa-regular fa-heart fa-2xs"></i><a href="#wishlist"> Wishlist</a>
                    </li>
                    <li class="sidemenu">
                        <i class="fa-solid fa-cart-shopping fa-2xs"></i><a href="cartview.jsp"> Cart</a>
                    </li>
                    <li class="sidemenu">
                        <a href="#notification">Manage Notification</a>
                    </li>
                    <li class="sidemenu">
                        <a href="#contactus">Contact Us</a>
                    </li>
                    <!-- shop now -->
                    <p class="sidemenu" id="shopnow">SHOP NOW</p>
                    <li class="sidemenu">
                        <div class="dropdown">
                            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
                                onclick="toggle(this)">Mens</button>
                            <div class="dropdown-menu" id="dropmenu" aria-labelledby="dropdownMenuButton">
                                <a class="dropdown-item" href="#">EYEGLASSES</a>
                                <a class="dropdown-item" href="#">COMPUTER GLASSES</a>
                                <a class="dropdown-item" href="#">SUN GLASSES</a>
                                <a class="dropdown-item" href="#">CONTACT LENSES</a>
                            </div>
                        </div>
                    </li>
                    <li class="sidemenu">
                        <div class="dropdown">
                            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
                                onclick="toggle(this)">Mens</button>
                            <div class="dropdown-menu" id="dropmenu" aria-labelledby="dropdownMenuButton">
                                <a class="dropdown-item" href="#">EYEGLASSES</a>
                                <a class="dropdown-item" href="#">COMPUTER GLASSES</a>
                                <a class="dropdown-item" href="#">SUN GLASSES</a>
                                <a class="dropdown-item" href="#">CONTACT LENSES</a>
                            </div>
                        </div>
                    </li>
                    <li class="sidemenu">
                        <div class="dropdown">
                            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
                                onclick="toggle(this)">Mens</button>
                            <div class="dropdown-menu" id="dropmenu" aria-labelledby="dropdownMenuButton">
                                <a class="dropdown-item" href="#">EYEGLASSES</a>
                                <a class="dropdown-item" href="#">COMPUTER GLASSES</a>
                                <a class="dropdown-item" href="#">SUN GLASSES</a>
                                <a class="dropdown-item" href="#">CONTACT LENSES</a>
                            </div>
                        </div>
                    </li>
                    <p class="sidemenu" id="services">OUR SERVICES</p>
                    <li class="sidemenu">
                        <a href="#freehometrail">Free Home Trail</a>
                    </li>
                    <li class="sidemenu">
                        <a href="#homeeyecheckup">Home Eye Check-Up</a>
                    </li>
                    <li class="sidemenu">
                        <a href="#Storelocator">Store Locator</a>
                    </li>
                    <p class="sidemenu" id="highlights">HIGHLIGHTS</p>
                    <li class="sidemenu">
                        <a href="#Checkframesize">Check Frame Size</a>
                    </li>
                    <li class="sidemenu">
                        <a href="#goldmembership">Gold Membership</a>
                    </li>
                    <li class="sidemenu">
                        <a href="#tryframesin3d">Try Frames in 3D</a>
                    </li>
                    <li class="sidemenu">
                        <a href="#downloadapps">Download Apps</a>
                    </li>
                    <p class="sidemenu" id="faq">FAQ's & POLICIES</p>
                    <li class="sidemenu">
                        <a href="#frequently">Frequently Asked Questions</a>
                    </li>
                    <li class="sidemenu">
                        <a href="#cancellation">Cancellation & Return Policy</a>
                    </li>
                    <li class="sidemenu">
                        <a href="#cobrowsing">Cobrowsing</a>
                    </li>
                </ul>
                <i class="fas fa-bars" id="start" onclick="openmenu()"></i>
            </nav>
        </div>
    </div>

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
