<%@include file="config.jsp" %>
<html>
<head>
    <title>Tripda - Contact Us</title>
    <link href="css/css_main.css" rel="stylesheet" type="text/css" media="all">
    <link href="css/css_contact.css" rel="stylesheet" type="text/css" media="all">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
    <script type="text/javascript" src="js/js.js"></script>
</head>

<body>
<%@include file="Header.jsp" %>

<div id="contact_us">
<h3>Contact Tripda</h3>
<hr>
<p>We are constantly working to improve our services. Hence, your feedback is extremely important to us. Kindly fill out the form below with your questions, complaints or suggestions and we will get back to you as soon as possible. Thank you for helping us create a better carpooling service! </p>
<div id="address_contact">
<h4>Tripda India</h4>
<span>Plot no. 22, Judges Bunglow Road,</span><br/>
<span>Satellite, Ahmedabad - 380015</span><br/>
<span>T:+91 9727048820</span>
</div>
<div class="form_div" id="contact_form">
<form action="contactus_process.jsp" method="post" onSubmit="">
    <table>
	<tr>
    <td><input type="text" name="name" id="flname" placeholder="Name"/></td>
    </tr>
    
    <tr>
    <td><input type="email" name="email" id="lemail" placeholder="Email"/></td>
    </tr>
 
 	<tr>
    <td><input type="text" name="subject" id="lsubject" placeholder="Subject"/></td>
    </tr>
 
 	<tr>
    <td><textarea rows="4" cols="40" spellcheck="true"  id="lmessage" name="msg" placeholder="Enter Your Message.." 			required></textarea></td>
    </tr>
 
    <tr>
    <td colspan="2"><button class="button" type="submit">Login</button></td>
    </tr>
    
    </table>
</form>
</div>

<!--<div id="contact_form">
	<label>Name</label>
	<input type="text" name="name" id="flname" placeholder="Name"/><br/>
    <label>Email</label>
	<input type="Email" name="email" id="email" placeholder="Email"/><br/>
    <label>Subject</label>
	<input type="text" name="subject" id="subject" placeholder="Subject"/><br/>
    <label>Message</label>
	<textarea rows="5" cols="10" name="message" id="message" placeholder=""/>
</div>-->
</div>
<%@include file="Footer.jsp" %>
</body>
</html>