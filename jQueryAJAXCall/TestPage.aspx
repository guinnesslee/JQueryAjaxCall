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

    function ExecuteAJAXCall2() {
        $.ajax({
            url: "AJAXCall2.aspx",
            dataType: 'json',
            success: Callback_AJAXCall2
        });
    };

    function Callback_AJAXCall2(data) {
        document.getElementById("DataContainer2").innerHTML = "The computer name is: " + data;
    };

</script>
<body>
    <form id="form1" runat="server">
    <h2>jQuery AJAX call test page</h2>
    <button type="button" onclick='ExecuteAJAXCall()'>Get server time</button>
    <button type="button" onclick='ExecuteAJAXCall2()'>Get computer name</button>
    <br /><br />
    <div id="DataContainer" ></div>    
    <div id="DataContainer2" ></div>    
    </form>
</body>
</html>




