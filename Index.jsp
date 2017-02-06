<html>
<head>
    <script>
  var pollAndCheck = function () {
   document.getElementById("sessionActve").innerHTML="Checking..." ;
    if (window.XMLHttpRequest) {
     
      xmlhttp=new XMLHttpRequest();
    } else {  
      xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function() {
      if (xmlhttp.readyState==4 && xmlhttp.status==200) {
        document.getElementById("sessionActve").innerHTML=xmlhttp.responseText;
      }
    }
    xmlhttp.open("POST","isActive",true);
    xmlhttp.send();
  };
 window.setTimeout(pollAndCheck, 2.5*60*1000);
  
</script>
</head>
<%
session = request.getSession(false);
if (session != null) {
  session.invalidate();
}
session = request.getSession(true);
System.out.println("Session has been activated at " + session.getCreationTime());
%>

<body>
    
    <h3>Hello, This is a sample page</h3>
    <br/><br/><br/>
    Is your session active ?? <div id="sessionActve"></div>  

</body>
</html>
