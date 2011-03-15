<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestPage.aspx.cs" Inherits="jQueryAJAXCall.TestPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>jQuery AJAX call test page</title>
</head>

<script type="text/javascript" src="/shared/jquery-1.4.2.js" ></script>
<script type="text/javascript">

    function ExecuteAJAXCall() {
        $.ajax({ 
            url: "AJAXCall.aspx",
            dataType: 'json', 
            success: Callback_AJAXCall
        });
    };

    function Callback_AJAXCall(data) {
        document.getElementById("DataContainer").innerHTML = "The time at the server is: " + data;
    };

</script>
<body>
    <form id="form1" runat="server">
    <h2>jQuery AJAX call test page</h2>
    <button type="button" onclick='ExecuteAJAXCall()'>Get server time</button>
    <br /><br />
    <div id="DataContainer" ></div>    
    </form>
</body>
</html>




