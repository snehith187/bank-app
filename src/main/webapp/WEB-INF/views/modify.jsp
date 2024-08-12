<%@ page import="java.util.List" %>
<%@ page import="register.Customer" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Modify Customer Details</title>
    <style>
        body {
     font-family: Arial, sans-serif;
     margin: 0;
     padding: 0;
     user-select: none;
     display: flex;
     flex-direction: column;
     justify-content: center;
     align-items: center;
     background-color: #FFFFFF; /* Fallback color */
     position: relative; /* For overlay positioning */
 }
 
 body::before {
     content: '';
     position: absolute;
     top: 0;
     left: 0;
     width: 100%;
     height: 100%;
     background-image: url(modify-details-img.jpeg); /* Path to your background image */
     background-size: cover; /* Cover the entire viewport */
     background-position: center; /* Center the image */
     opacity: 1; /* Low transparency */
     z-index: -1; /* Place background behind content */
 }
 
 .header-strip {    
     background-color: #333; /* Same color as Add Customer page */
     padding: 2px 0;
     text-align: center;
     color: white;
     width: 100%;
 }
 
 h1 {
     margin: 0;
     opacity: 0; /* Initially hidden */
     animation: fadeIn 1s forwards;
 }
 
 @keyframes fadeIn {
     100% {
         opacity: 1;
     }
 }
 
 h2 {
     text-align: center;
     color: black;
     margin-top: -100px; /* Initially hidden */
     opacity: 0;
     animation: slideIn 1s forwards; /* Slide in from top */
 }
 
 @keyframes slideIn {
     100% {
         margin-top: 0px;
         opacity: 1;
     }
 }
 
 form {
     width: 600px;
     background-color: #FFFFFF; /* Bright white background for form */
     margin: 0 auto;
     padding: 20px;
     border-radius: 8px;
     box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Shadow for better visibility */
     position: relative; /* Ensure form is above the background */
     z-index: 1; /* Bring form above the background */
 }
 
 label {
     display: block;
     margin-bottom: 5px;
     color: black; /* Dark color for text */
 }
 
 input[type="text"],
 input[type="password"],
 input[type="email"] {
     width: calc(100% - 20px);
     padding: 10px;
     color: black;
     margin-bottom: 15px;
     border: 1px solid #ccc;
     border-radius: 5px;
 }
 
 input[type="submit"] {
     width: 100%;
     padding: 10px;
     margin-top: 10px;
     background-color: green;
     color: white;
     border: none;
     border-radius: 5px;
     cursor: pointer;
     transition: background-color 0.3s ease, font-weight 0.3s ease, font-size 0.3s ease;
 }
 
 input[type="submit"]:hover {
     font-weight: bold;
     font-size: 18px;
     background-color: #2e7d32; /* Darker green color on hover */
 }
 
 .error-message {
     color: red;
     font-size: 14px;
     margin-top: 5px;
 }
 
 .tile {
     margin: auto; 
     text-align: center; 
     max-width: 30%;
     height: 20%;
 }
 
 img {
     max-width: 40%;
     height: auto;
 }
 
     </style>
 
</head>
<body>
    <div class="header-strip">
        <h1>VelTech Bank</h1>
    </div>
    <div class="tile">
        <img src="mod-cus.png" alt="Modify Customer">
    </div>
    <h2>Modify Customer Details</h2>

    <form method="post" action="<%= request.getContextPath() %>/ModifyCustomerServlet">
        <label for="accountNumber">Account Number:</label>
        <input type="text" id="accountNumber" name="accountNumber" value=""><br>

        <label for="fullName">Full Name:</label>
        <input type="text" id="fullName" name="fullName" value="" required><br>

        <label for="address">Address:</label>
        <input type="text" id="address" name="address" value="" required><br>

        <label for="emailId">Email ID:</label>
        <input type="email" id="emailId" name="emailId" value="" required><br>
        
        <label for="phone">Phone:</label>
        <input type="text" id="phone" name="phone" value="" required><br>

        <label for="dob">Date of Birth:</label>
        <input type="date" id="dob" name="dob" value="" required><br>
        <div id="formError" class="error-message"></div>
        <input type="submit" value="Modify">
    </form>

    <div id="formError"></div>

    <script>
        function validateForm() {
            var phoneNumber = document.getElementById("phone").value;
            if (phoneNumber.length !== 10 || isNaN(phoneNumber)) {
                document.getElementById("formError").innerHTML = "Phone number should be 10 digits";
                return false;
            }

            return true;
        }
    </script>
</body>
</html>