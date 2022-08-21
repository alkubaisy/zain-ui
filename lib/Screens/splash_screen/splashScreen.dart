import 'package:flutter/material.dart';
import 'package:zain/Screens/home_screen/homeScreen.dart';

var color1=const Color(0xff18b7bd);
var color2=const Color(0xff44c9ae);
var color3=const Color(0xff73db9f);
bool _visible = true;

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  Future Delay() async {

    await new Future.delayed(const Duration(seconds: 4));
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()),
    );
  }
  Future visibleValue() async {
    await new Future.delayed(const Duration(seconds: 2));
    setState(() {
      _visible = !_visible;
    });

  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    visibleValue();
    Delay();
  }


  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Container(
        decoration: BoxDecoration(
          gradient:  LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                color1,
                color2,
                color3,

              ],
            stops: const [
              0.1,
              0.3,
              1.0
            ]

          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: AnimatedOpacity(
                opacity: _visible ? 0.0 : 1.0,
                duration:  Duration(milliseconds: 600),
              child: Image.asset("images/logo.png",height: size.height*0.06,width:  size.width*0.43,),
            )
          ),
        )
    );
  }
  Widget gridCard(){
    return Container();

  }
}
