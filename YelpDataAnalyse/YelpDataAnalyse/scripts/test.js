
function displayStarsChart() {
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
                data: [0, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6]

            }]
        });
    });  
}

//function getStarsData() {
//    var starsData;
//    $.ajax({
//        type: "POST",
//        url: "test.aspx/getStars",
//        data: { starsData: starsData },
//        contentType: "application/json; charset=utf-8",
//        async: false,
//        cache: false,
//        success: function (msg) {
//            starsData = msg;
//        }
//    })
//}

