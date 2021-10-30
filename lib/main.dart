import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(MediaQuery(
    data: new MediaQueryData(),
      child: MaterialApp(
        home:MyMeteo() ,)));
}
class MyMeteo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children : [
            Center(
              child: Column(
              mainAxisAlignment:MainAxisAlignment.center ,
              children: [
                const Text(
                  'WEATHER APP',
                  style: TextStyle(
                    fontSize: 35 ,
                    fontWeight: FontWeight.bold
                  ),
                ) ,

               const SizedBox(
                  height: 15,
                ) ,

               Container(
                  height: 150,
                  width: 150,
                  child: Image.asset(
                    'assets/intro2.png'
                  ),
                ) ,

              const Text(
                  'BLIDA,ALG',
                  style: TextStyle(
                    fontSize: 35 ,
                    fontWeight: FontWeight.bold
                  ),
                ) ,
                const SizedBox(
                  height: 15,
                ) ,
              const Text(
                  'FRIDAY,29 NOV ',
                  style: TextStyle(
                    fontSize: 25 ,
                    color: Colors.grey
                  ),
                ) ,

               ],
          ),
            ),

            Positioned(
              bottom:-300 ,
              child: Container(
                decoration: const BoxDecoration(
                color: Colors.amber,
                  shape: BoxShape.circle,                ),
                height: MediaQuery.of(context).size.width+20,
                width: MediaQuery.of(context).size.width+20,
                child: const Padding(
                  padding: EdgeInsets.only(bottom: 270),
                  child: Center(
                    child: Text(
                      "Today's changes",
                      style: TextStyle(
                        fontSize: 23 ,
                        fontWeight: FontWeight.bold ,
                        color: Colors.white
                      ),
                    ),
                  ),
                ),
              ),
            )
        ],

        ),
      );

  }
  
}

