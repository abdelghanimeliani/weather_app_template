import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                color: Color(0xff00ACC1) ,
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
            )],
        ),
      ),
    );
  }
}
