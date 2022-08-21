import 'package:flutter/material.dart';
class BarIcons extends StatelessWidget {
  const BarIcons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(right: size.width * 0.05,left: size.width * 0.05,top: size.height * 0.01),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset("images/setting.png", height: size.height * 0.033),
          Image.asset(
            "images/logo.png",
            height: size.height * 0.1,
            width: size.width * 0.3,
          ),
          Image.asset("images/icon2.png", height: size.height * 0.033)
        ],
      ),
    );
  }
}
