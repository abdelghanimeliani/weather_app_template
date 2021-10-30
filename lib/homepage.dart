import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width ,
              height: MediaQuery.of(context).size.height*0.5,
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
                        SizedBox(height: 7,),
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
                  SizedBox(height: 20,),

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
                        padding: const EdgeInsets.only(left: 40 , top: 20),
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
                        padding: const EdgeInsets.only(right: 40 , top: 20),
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
          Container(
            height: MediaQuery.of(context).size.height*0.7,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              children: [
                ItemCity("alger", Colors.white, '20°C', Icon(Icons.wb_sunny , color:  Colors.white,)),
                ItemCity("batna", Color(0xFFB3E5FC) ,  '10°C', Icon(Icons.cloud_outlined , color:  Colors.white,)) ,
                ItemCity("medea", Colors.white, '7°C', Icon(Icons.wb_sunny , color:  Colors.white,))  ,
                ItemCity("skikda", Color(0xFFB3E5FC), '7°C', Icon(Icons.wb_sunny , color:  Colors.white,))  ,
                ItemCity("tiraret", Colors.white, '7°C', Icon(Icons.wb_sunny , color:  Colors.white,))  ,
                ItemCity("adrar", Colors.white, '30°C', Icon(Icons.wb_sunny , color:  Colors.white,))  ,
                ItemCity("setif", Colors.white, '7°C', Icon(Icons.wb_sunny , color:  Colors.white,))  ,
              ],
            ),
          )


          ],
        ),
      ),
    );
  }
}


class ItemCity extends StatelessWidget {
  final  Color color ;
  final String temp ;
  final Icon icon ;
  final String city;

   const ItemCity(this.city ,  this.color ,  this.temp , this.icon );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: this.color),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Text("09:20" , style: TextStyle(fontSize: 25 , color: Colors.grey),
             ) ,
            Text(this.city , style: TextStyle(fontSize: 25 , color: Colors.black)
            ) ,
            Text(temp ,style :  TextStyle(fontSize: 25 , color: Colors.black , fontWeight: FontWeight.bold)),
            Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle ,
                color: Colors.amber ,
              ),
              child: icon
            ),
          ],
        ),
      ),
    );
  }
}

