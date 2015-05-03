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
    <script>
        function displayStarsChart() {
            var starsData = getStarsData();
            $(function () {
                $('#container').highcharts({
                    chart: {
                        type: 'column'
                    },
                    title: {
                        text: 'Overal Stars Counts'
                    },

                    xAxis: {
                        categories: [
                            '0',
                            '0.5',
                            '1',
                            '1.5',
                            '2',
                            '2.5',
                            '3',
                            '3.5',
                            '4',
                            '4.5',
                            '5'
                        ],
                        title: {
                            text: 'Stars'
                        },
                        crosshair: true
                    },
                    yAxis: {
                        min: 0,
                        title: {
                            text: 'number'
                        }
                    },
                    tooltip: {
                        headerFormat: '<span style="color:{series.color};style="font-size:10px"><td>Stars:</td></span>' + '<td><b>{point.key}</b></td><table>',
                        pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
                            '<td style="padding:0"><b>{point.y:.1f} </b></td></tr>',
                        footerFormat: '</table>',
                        shared: true,
                        useHTML: true
                    },
                    plotOptions: {
                        column: {
                            pointPadding: 0,
                            borderWidth: 0
                        }
                    },
                    series: [{
                        name: 'Number',
                        data: [starsData[0], starsData[1], starsData[2], starsData[3], starsData[4], starsData[5], starsData[6], starsData[7], starsData[8], starsData[9], starsData[10]]

                    }]
                });
            });
        }

        function getStarsData() {
            var starsData;
            $.ajax({
                type: "POST",
                url: "test.aspx/getStars",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: false,
                cache: false,
                success: function (msg) {
                    starsData = msg.d;
                    
                },
                failure: function (msg) {
                    alert(msg.d);
                }
            });
            return starsData;
        }
    </script>
    
</head>

<body>

    <h1>This is a web app for data visualization!
           <br />
    </h1>
    <div>
        <button type="button" id="testButton1" style="width: 95px" onclick="displayStarsChart()"/>test button<br/></button>
    </div>
    <br />
    
    <div id="container" style="width: 600px; height: 400px; margin: 0 auto"></div>    
    
</body>
</html>

