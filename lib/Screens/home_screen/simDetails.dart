import 'package:flutter/material.dart';
class simDetails extends StatelessWidget {

  final imagePath;
  final number;
  final innerText;
  final outText;
  final firstColor;
  final secondColor;
  final cirleColor;
  simDetails({
    Key? key,
    required this.imagePath,
    required this.number,
    required this.innerText,
    required this.outText,
    required this.firstColor,
    required this.secondColor,
    required this.cirleColor

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      // margin: EdgeInsets.symmetric(horizontal: size.width*0.05),
      height: size.height*0.25,
      width: size.width*0.425,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(size.width*0.02),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 3,
              offset: Offset(0, 2),
            )
          ]
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: size.height*0.15,
              width: size.width*0.33,
              decoration: BoxDecoration(
                shape: BoxShape.circle,

                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    firstColor,
                    secondColor,
                  ],
                  stops: const [0.4, 1.0],
                ),

              ),
              child: Container(
                margin: EdgeInsets.all(size.width*0.015),
                height: size.height*0.14,
                width: size.width*0.31,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white

                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        height: size.height*0.04,
                        width: size.width*0.08,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: cirleColor,


                        ),
                        child:Padding(
                          padding: EdgeInsets.all(size.width*0.015),
                          child:  Image.asset(imagePath),
                        )
                    ),
                    Text(number,style: TextStyle(
                        color: Colors.black,
                        fontSize: size.width*0.045,
                        fontFamily: "HelveticaNeue",
                        fontWeight: FontWeight.bold
                    ),),

                    Padding(padding: EdgeInsets.only(left: size.width*0.004),
                      child: Text(innerText,style: TextStyle(
                          color: Colors.black,
                          fontSize: size.width*0.04,
                          fontFamily: "HelveticaNeue",
                          fontWeight: FontWeight.w500
                      ),),

                    ),
                    SizedBox(height: size.height*0.001,)

                  ],
                ),
              ),
            ),
            Text(outText,style: TextStyle(
                color: Colors.black,
                fontSize: size.width*0.048,
                fontFamily: "HelveticaNeue",
                fontWeight: FontWeight.w500
            ),),
          ],
        ),
      ),
    );
  }}