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
    <style>
        .cart-view-con-con{
            display: flex;
            justify-content: space-between;
            border: solid 2px black;
            width: 97%;
            height: 80%;
            margin: 20px;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px black;
        }
        .cart-view-con-1{
        	border: solid 2px black;
        	padding: 10px;
        	height: 400px;
        	width: 500px;
        	overflow: auto;
        	margin-top:100px;
        	margin-left: 400px;
        	transition: box-shadow 0.5s ease-in-out;
  			animation: glow4 2s infinite alternate;
        	border-radius: 10px;
        }
        @keyframes glow4{
  from{
    box-shadow: 0 0 20px lightgreen;
  }

  to{
    box-shadow: 0 0 50px lightgreen;
  }
}
        .image-cart-cart-cart{
			height: 380px;
			width: 400px;
        }
		.desc-desc-desc3{
			font-size: 20px;
            color: black;
		}
        #bttttttttttttttn-1{
            position: absolute;
            right: 240px;
        }
    </style>

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
            out.println("<div class='cart-view-con-con'>");
            out.println("<div class='cart-view-con'>");
            out.println("<img src='" + productImageLink + "' alt='Product Image' class='image-cart-cart-cart'>");
            out.println("<p class='desc-desc-desc3'>Description: " + productDescription + "</p>");
            out.println("<p class='desc-desc-desc3'>Price: RS:-" + productPrice + "</p>");
			out.println("</div>");
            // Button for placing order for individual product
            out.println("<div class='cart-view-con-1'>");
            out.println("<p class='desc-desc-desc3'>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Pariatur provident nostrum cupiditate, autem beatae ullam ipsam doloribus, magnam quia, alias porro quas dolor accusamus eveniet! Et odio commodi vero voluptatibus aut quibusdam maiores velit?</p>");
            out.println("</div>");
            out.println("<form action='placeOrder.jsp' method='post'>");
            out.println("<input type='hidden' name='productDescription' value='" + productDescription + "'>");
            out.println("<input type='hidden' name='productPrice' value='" + productPrice + "'>");
            out.println("<input type='hidden' name='productImageLink' value='" + productImageLink + "'>");
            out.println("<input class='bttn-1' id = 'bttttttttttttttn-1' type='submit' value='Place Order'>");
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
