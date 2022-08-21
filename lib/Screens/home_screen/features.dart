import 'package:flutter/material.dart';

class features extends StatelessWidget {
  final imagePath;
  final title;

  features({
    Key? key,
    required this.imagePath,
    required this.title,

  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      width: size.width*0.1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size.width*0.03),
        color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 3,
              offset: Offset(0, 1),
            )
          ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: size.width*0.08,
            height: size.height*0.04,
            decoration: BoxDecoration(
              // color: Colors.green,
                shape: BoxShape.rectangle,
                image: DecorationImage(image: AssetImage(imagePath),fit: BoxFit.fill)
            ),
          ),
          Text(title,style: TextStyle(
              color: Colors.black,
              fontSize: size.width*0.034,
              fontFamily: "HelveticaNeue",
              fontWeight: FontWeight.w500
          ),),
        ],
      ),
    );
  }
}
