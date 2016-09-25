<%@include file="keeplogin.jsp" %>
<%@ page import="java.text.*" %>
<%@ page import="java.util.Date" %>

<html>
<head>
	<%@include file="checklogin.jsp" %>
    <title>Tripda - Create</title>
    <link href="css/css_main.css" rel="stylesheet" type="text/css" media="all">
    <link href="css/css_create.css" rel="stylesheet" type="text/css" media="all">

    <!--	Start :: For a AutoComplete	-->
	<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&libraries=places"></script>
    <!--	End :: For a AutoComplete	-->
    
    <!--	Start :: For a DatePicker	-->
    <script type="text/javascript" src="js/js.js"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <link rel="stylesheet" href="/resources/demos/style.css">
    <!--	End :: For a DatePicker	-->

    <%
	DateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
	Date date = new Date();
	String curdate=dateFormat.format(date);
	%>

<script>
function create()
{
	var flag=true;
	var x=document.getElementById("searchTextField");
	if(x.value=="")
	{	
	 	flag=false;
		x.style.border="2px solid #F90";
	}
	else
	{
		x.style.border="1px solid #666";
	}
	
	x=document.getElementById("searchTextField1");
	if(x.value=="")
	{	
	 	flag=false;
		x.style.border="2px solid #F90";
	}
	else
	{
		x.style.border="1px solid #666";
	}

	x=document.getElementById("num");
	if(parseInt(x.value)>0)
	{
		x.style.border="1px solid #666";
	}
	else
	{
		flag=false;
		x.style.border="2px solid #F90";
	}
	x=document.getElementById("datepicker");
	if(x.value=="")
	{	
	 	flag=false;
		x.style.border="2px solid #F90";
	}
	else
	{
		str="<%=curdate%>";
		var c_m=str.substring(0,2);
		var c_d=str.substring(3,5);
		var c_y=str.substring(6,10);
		
		str=x.value+"";
		var t_m=str.substring(0,2);
		var t_d=str.substring(3,5);
		var t_y=str.substring(6,10);

		if(c_m>t_m || c_d>=t_d || c_y>t_y)
		{
			flag=false;
			x.style.border="2px solid #F90";
		}
		else
		{
			x.style.border="1px solid #666";
		}

	}
	return flag;
}

$(function() {
    $( "#datepicker" ).datepicker();
  });

</script>
</head>

<body>
<%@include file="Header.jsp" %>

<div class="form_div" id="create_form">
<h1>Create A Carpool</h1>
<form action="create_process.jsp" method="post" onSubmit="return create()">
    <table>
    <tr>
    <td><input type="text" name="source" id="searchTextField" class="input1" placeholder="Source"/></td>
    </tr>

	<tr>
    <td><input type="text" name="dest" id="searchTextField1" class="input1" placeholder="Destination"/></td>
    </tr>
    
    <tr>
    <td><label>No of People</label> <input type="text" name="num" id="num" placeholder="Excluding You"/></td>
    </tr>
    
    <tr>
    <td>
    <label>Date</label>
	<input type="text" id="datepicker" name="date" placeholder="MM/DD/YYYY">    
    </td>
    </tr>
    
    <tr>
    <td><label>Time</label>
    <select name="pm">PM
    <option>AM</option>
    <option>PM</option>
    </select>    

    <select name="mm">MM
    <option>00</option><option>10</option><option>20</option><option>30</option><option>40</option><option>50</option>
	</select>

    <select name="hh">HH
    <option>1</option><option>2</option><option>3</option><option>4</option><option>5</option><option>6</option><option>7</option><option>8</option><option>9</option><option>10</option><option>11</option><option>12</option>
    </select>    

    </td>
    </tr>
    
    <tr>
    <td colspan="2"><button class="button" type="submit">Create</button></td>
    </tr>
    
    </table>	
</form>
</div>
<div class="margin_head"></div>
<%@include file="Footer.jsp" %>
</body>
</html>