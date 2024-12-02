<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>

<div class="container">
    <%@include file="navbar.jsp"%>
    
    <br>
    <h1>Please Fill your Note Details</h1>
    <br>
    
    <!-- This is add form -->
    <form action="SaveNoteServlet"  method="post">
  <div class="form-group">
    <label for="exampleInputEmail1">Note title</label>
    <input 
    name="title"
    required 
    type="text" 
    class="form-control" 
    id="title" 
    aria-describedby="emailHelp" 
    placeholder="Enter here" />
  </div>
  
  <div class="form-group">
    <label for="content">Content</label>
    <textarea 
    name="content"
    required id="content"
    placeholder="Enter your content here"
    class="form-control"
    style="height:300px;"
    ></textarea>
  </div>
  
  <button type="submit" class="btn btn-primary">Add</button>
</form>
    </div>
    
</body>
</html>