
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
   DetailPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width ,
              height: MediaQuery.of(context).size.height*0.45,
              decoration: const BoxDecoration(
                  color: Color(0xff00ACC1)
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30 , top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: const [
                        Text(
                          'BLIDA,ALG',
                          style: TextStyle(
                              fontSize: 33 ,
                              fontWeight: FontWeight.bold ,
                              color: Colors.white
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          'FRIDAY,29 OCT',
                          style: TextStyle(
                              fontSize: 23 ,
                              color: Color(0xFFB2EBF2)
                          ),
                        ),
                      ],
                    ),
                  ) ,
                  SizedBox(height: 15,),

                  Padding(
                    padding: const EdgeInsets.only(left: 70),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 60),
                          child: Container(
                            height: 55,
                            width: 55,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle ,
                              color: Color(0xFF4DD0E1) ,
                            ),
                            child: const Icon(
                              Icons.cloud_outlined ,
                              color: Colors.white,
                            ),
                          ),
                        ) ,
                        SizedBox(width: 10,),
                        Column(
                          children: const [
                            Text(
                              '19°C' ,
                              style: TextStyle(
                                  fontFamily: 'RobotoMono',
                                  fontSize: 70 ,
                                  fontWeight: FontWeight.normal ,
                                  color: Colors.white
                              ),
                            ),
                            SizedBox(height: 2,) ,
                            Text(
                              'mostly raining' ,
                              style: TextStyle(
                                fontSize: 25 ,
                                color: Color(0xFFB2EBF2) ,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ) ,

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 40 , top: 10),
                        child: Row(
                          children: [
                            Container(
                              height: 55,
                              width: 55,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle ,
                                color: Colors.white ,
                              ),
                              child: const Icon(
                                Icons.cloud_outlined ,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: 5,),
                            const Text('09:30'  ,
                              style: TextStyle(
                                  color: Colors.white ,
                                  fontSize: 30
                              ),)
                          ],
                        ),
                      ) ,

                      Padding(
                        padding: const EdgeInsets.only(right: 40 , top: 10),
                        child: Row(
                          children: [
                            Container(
                              height: 55,
                              width: 55,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle ,
                                color: Colors.white ,
                              ),
                              child: const Icon(
                                Icons.cloud_outlined ,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: 5,),
                            const Text('12:30'  ,
                              style: TextStyle(
                                  color: Colors.white ,
                                  fontSize: 30
                              ),)
                          ],
                        ),
                      )
                    ],
                  )

                ],
              ),
            ) ,

            SizedBox(height: 10,) ,
             Column(children: [
               Padding(
                 padding: const EdgeInsets.only(left: 30 , right: 80 , top:8),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: const [
                    Text('Precpitation' ,
                     style: TextStyle(
                       fontSize: 22 ,
                       color: Colors.grey
                     ),) ,
                     Text('0%' ,
                       style: TextStyle(
                           fontSize: 22 ,
                       ),
                     ),
                   ],
                 ),
               ) ,
               Padding(
                 padding: const EdgeInsets.only(left: 30 , right: 80 , top:8),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: const [
                     Text('Humidity' ,
                       style: TextStyle(
                           fontSize: 22 ,
                           color: Colors.grey
                       ),) ,
                     Text('63%' ,
                       style: TextStyle(
                         fontSize: 22 ,
                       ),
                     ),
                   ],
                 ),
               ) ,
               Padding(
                 padding: const EdgeInsets.only(left: 30 , right: 80 , top:8),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: const [
                     Text('wind' ,
                       style: TextStyle(
                           fontSize: 22 ,
                           color: Colors.grey
                       ),) ,
                     Text('18km/h' ,
                       style: TextStyle(
                         fontSize: 22 ,
                       ),
                     ),
                   ],
                 ),
               ) ,
             ],),

        SizedBox(height: 25,),
        Container(
          height: MediaQuery.of(context).size.height*0.35,
          width: MediaQuery.of(context).size.width,

          child: Padding(
            padding: const EdgeInsets.only(right: 20 , top: 15),
            child: LineChart(
            mainData(),
            swapAnimationDuration: Duration(milliseconds: 150), // Optional
            swapAnimationCurve: Curves.linear, // Optional
      ),
          ),
        ),


          ],
        ),
      ),
    );
  }
}


LineChartData mainData() {
  List<Color> gradientColors = [Colors.amber];

  return LineChartData(
    gridData: FlGridData(
        show: true,
        drawHorizontalLine: true,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 0.1,
          );
        }

        ),
    titlesData: FlTitlesData(
      show: true,
      bottomTitles: SideTitles(
        showTitles: true,
        reservedSize: 22,
        getTitles: (value) {
          switch (value.toInt()) {
            case 0:
              return 'Fri';
            case 1:
              return 'Sat';
            case 2:
              return 'Sun';
            case 3:
              return 'mon';
            case 4:
              return 'tue';
            case 5:
              return 'wed';
            case 6:
              return 'thu';
          }
          return '';
        },
        margin: 8,
      ),
      leftTitles: SideTitles(
        showTitles: true,

        getTitles: (value) {
          switch (value.toInt()) {
            case 1:
              return '15';
            case 3:
              return '30';
          }
          return '';
        },

      ),
    ),
    borderData: FlBorderData(
      show: false,
    ),
    minX: 0,
    maxX: 6,
    minY: 10,
    maxY: 30,
    lineBarsData: [
      LineChartBarData(
        spots: [
          FlSpot(0, 19),
          FlSpot(1, 22),
          FlSpot(2, 21),
          FlSpot(3, 17),
          FlSpot(4, 15),
          FlSpot(5, 18),
          FlSpot(6, 22),
        ],
        isCurved: true,
        colors: gradientColors,
        barWidth: 5,
        isStrokeCapRound: false,
        dotData: FlDotData(
          show: true,
        ),
      ),
    ],
  );
}