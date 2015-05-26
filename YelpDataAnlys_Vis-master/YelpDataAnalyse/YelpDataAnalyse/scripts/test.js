
      function displayStarsChart() {
          var starsData = getStarsData();
          $(function () {
              $('#container').highcharts({
                  chart: {
                      
                      backgroundColor: 'transparent',
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
        url: "test.aspx/getCityStars",
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





