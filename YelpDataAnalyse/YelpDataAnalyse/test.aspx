<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="YelpDataAnalyse.test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>test page</title>
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script type="text/javascript" src="scripts/test.js"></script>
    <script src="http://code.highcharts.com/highcharts.js"></script>
    <script src="http://code.highcharts.com/modules/exporting.js"></script>
    <style>
        #testButton {
            width: 200px;
            height:50px;
        }
        #container {
            float:left;
        }
    </style>
    
</head>

<body>

    <h1>This is a web app for data visualization!
           <br />
    </h1>
    <div>
        <button type="button" id="testButton" style="width: 95px" onclick="displayStarsChart()"/>test button<br/></button>
    </div>
    <br />
    
    <div id="container" style="width: 600px; height: 400px; margin: 0 auto"></div>    
    
</body>
</html>

