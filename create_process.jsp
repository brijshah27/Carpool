<%@include file="checklogin.jsp" %>
<%@include file="config.jsp" %>
<%
	String source = request.getParameter("source");
	String dest = request.getParameter("dest");
	String num = request.getParameter("num");
	String date = request.getParameter("date");
	String time = request.getParameter("hh")+":"+request.getParameter("mm")+" "+request.getParameter("pm");
	
	if(source==null || dest==null || num==null || date==null || time==null)
	{
		response.sendRedirect("PNF.html");
	}
	else
	{
		String ins = "insert into pool (source,dest,num,date,time,uid) values('"+source+"','"+dest+"',"+num+",'"+date+"','"+time+"','"+session.getAttribute("email")+"');";
			
		st.executeUpdate(ins);
		response.sendRedirect("Profile.jsp?msg=created");
	}
%>