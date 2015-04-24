<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="YelpDataAnalyse.test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title>Test Page</title>
    <style>
        #testButton {
            width:200px;
        }
    </style>
    <script type="text/javascript" src="scripts/test.js" ></script>    
</head>

<body>

    
    <form id="form1" runat="server">
        <h1>
        This is a web app for data visualization!
           <br />
        <input type ="button" id = "testButton" value="test button" onclick="testButtonClicked()"/><br/>
        </h1>   
        <br />
        for further information:<br />
        Xuezhang (Alex) Hu:<a href="mailto:hxzpork@gmail.com">hxzpork@gmail.com</a><br />
        Pan Tan:<a href="mailto:tpan1125@gmail.com">tpan1125@gmail.com</a><br />
    </form>
</body>
</html>

