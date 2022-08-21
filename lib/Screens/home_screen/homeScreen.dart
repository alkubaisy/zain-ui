import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zain/Screens/home_screen/barIcons.dart';
import 'package:zain/Screens/home_screen/features.dart';
import 'package:zain/Screens/home_screen/simDetails.dart';

var color1 = Color(0xff18b7bd);
var color2 = Color(0xff44c9ae);
var color3 = Color(0xff73db9f);
var bcolor = Color(0xff854f9b);
var backGroundColor = Color(0xfff9fcfc);

ScrollController? _scrollController;
ScrollController? _scrollController2;


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController2 = ScrollController();

  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        leading: Container(),
        elevation: 0,
        toolbarHeight: size.height*0.13,
        flexibleSpace: Container(
          width: size.width,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerRight,
              end: Alignment.bottomLeft,
              colors: [
                color1,
                color2,
                color3,
              ],
              stops: const [0.4, 0.9, 1.0],
            ),
          ),
          child: BarIcons(),
        ),
      ),
      body: ListView(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                height: size.height * 0.04,
                width: size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerRight,
                    end: Alignment.topLeft,
                    colors: [
                      color1,
                      color2,
                      color3,
                    ],
                    stops: const [0.4, 0.9, 1.0],
                  ),
                ),
              ),
              Container(
                height: size.height * 0.18,
                width: size.width * 0.9,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(size.width*0.02),
                    image: DecorationImage(image: AssetImage("images/topimg.jpg"),fit: BoxFit.fill)

                ),
              ),

            ],
          ),

          Container(
            margin: EdgeInsets.only(left: size.width*0.04,right: size.width*0.04,top: size.height*0.04,bottom: size.height*0.005),
            height: size.height * 0.067,
            width: size.width * 0.7,
            child: Text("Make sure that your number and\ndevice support 4G service",style: TextStyle(
                color: Colors.black,
                fontSize: size.width*0.05,
                fontFamily: "HelveticaNeue",
                fontWeight: FontWeight.bold
            ),),
          ),//text 4g

          Container(
            margin: EdgeInsets.symmetric(horizontal: size.width*0.045),
            height: size.height * 0.08,
            width: size.width * 0.9,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(size.width*0.02),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(0, 2),
                  )
                ]
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset("images/sim1.png",
                  height: size.height * 0.03,
                  // width: size.width * 0.43,
                ),
                Text("Press here to check your sim card if\nit's compatibale with the 4G service",style: TextStyle(
                    color: Colors.black,
                    fontSize: size.width*0.037,
                    fontFamily: "HelveticaNeue",
                    fontWeight: FontWeight.bold
                ),),
                Icon(Icons.arrow_forward_ios_outlined,color: Colors.grey.withOpacity(0.5),size: size.height*0.027,)
              ],
            ),
          ),//4g
          Container(
            height: size.height * 0.18,
            width: size.width * 0.9,
            margin: EdgeInsets.only(left: size.width*0.045,right: size.width*0.045,top: size.height*0.03,bottom: size.height*0.07),
            padding:  EdgeInsets.symmetric(horizontal: size.width*0.04,vertical: size.height*0.02),

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(size.width*0.02),
              gradient: LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
                colors: [
                  Color(0xff1ab8bc),
                  Color(0xff63d6a7),
                  Color(0xff8ee795),




                  // color3,
                ],
                stops: const [ 0.2,0.5, 1.0],
              ),

            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("My Balance",style: TextStyle(
                      color: Colors.white,
                      fontSize: size.width*0.04,
                      fontFamily: "HelveticaNeue",
                    ),),
                    Row(
                      children: [
                        Text("20,181.05",style: TextStyle(
                          color: Colors.white,
                          fontSize: size.width*0.062,
                          fontFamily: "HelveticaNeue",
                        ),),
                        Padding(
                          padding:  EdgeInsets.only(left: size.width*0.01,top: size.height*0.01),
                          child: Text("IQD",style: TextStyle(
                            color: Colors.white,
                            fontSize: size.width*0.04,
                            fontFamily: "HelveticaNeue",
                          ),),
                        )
                      ],
                    )

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Valid until 07/10/2022",style: TextStyle(
                      color: Colors.white,
                      fontSize: size.width*0.045,
                      fontFamily: "HelveticaNeue",
                    ),),
                    Container(
                        height: size.height*0.053,
                        width: size.width*0.28,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(size.width*0.03),
                          color: Color(0xff7dd9ce),

                        ),
                        child: Center(
                          child: Text("Recharge",style: TextStyle(
                            color: Colors.white,
                            fontSize: size.width*0.043,
                            fontFamily: "HelveticaNeue",
                          ),),
                        )

                    )
                  ],

                )
              ],
            ),
          ),//balance


          SizedBox(
            height: size.height*0.24,
            child: Scrollbar(
              isAlwaysShown: true,
              controller: _scrollController,
              radius: Radius.circular(6),
              child: ListView(
                controller: _scrollController,
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: size.width*0.05,),
                  simDetails(imagePath: "images/wifi.png", number: "1", innerText: "GB", outText: "Internet balance", firstColor: Color(0xfffdc899), secondColor: Color(0xfffdc976),cirleColor: Color(0xfffff8fa),),
                  SizedBox(width: size.width*0.05,),

                  simDetails( number: "0", innerText: "Min", imagePath: "images/call1.png", outText: "Minuts", firstColor: Color(0xffa1ece2),secondColor: Color(0xff6ad9c1), cirleColor: Color(0xfff0fefd),),
                  SizedBox(width: size.width*0.05,),
                  simDetails(imagePath: "images/email1.png", number: "1", innerText: "Message", outText: "SMS", firstColor: Color(0xff99d8e7), secondColor: Color(0xff6bbbd6),cirleColor: Color(0xffeff9fa),),
                  SizedBox(width: size.width*0.05,),

                  simDetails(imagePath: "images/bag.png", number: "0", innerText: "IQD", outText: "Credit", firstColor: Color(0xffffe2a9), secondColor: Color(0xfffdca77), cirleColor: Color(0xfffff6e1)),
                  SizedBox(width: size.width*0.05,),

                ],
              ),
            ),
          ),//listview

          Container(
            margin: EdgeInsets.only(left: size.width*0.04,right: size.width*0.04,top: size.height*0.04,bottom: size.height*0.007),
            height: size.height * 0.04,
            width: size.width * 0.7,
            child: Text("Track the Zone",style: TextStyle(
                color: Colors.black,
                fontSize: size.width*0.05,
                fontFamily: "HelveticaNeue",
                fontWeight: FontWeight.bold
            ),),
          ),
          Container(
            height: size.height * 0.25,
            width: size.width * 0.9,
            margin: EdgeInsets.only(left: size.width*0.045,right: size.width*0.045),
            padding:  EdgeInsets.symmetric(horizontal: size.width*0.04,vertical: size.height*0.02),

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(size.width*0.04),
                image: DecorationImage(image: AssetImage("images/zone.jpeg"),fit: BoxFit.fill)


            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    height: size.height*0.064,
                    width: size.width*0.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(size.width*0.03),
                      color: Color(0xff854f9b),

                    ),
                    child: Center(
                      child: Text("Get your gift",style: TextStyle(
                        color: Colors.white,
                        fontSize: size.width*0.043,
                        fontFamily: "HelveticaNeue",
                      ),),
                    )

                ),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: size.width*0.04,right: size.width*0.04,top: size.height*0.04,),
            height: size.height * 0.05,
            width: size.width * 0.7,
            child: Text("Features",style: TextStyle(
                color: Colors.black,
                fontSize: size.width*0.05,
                fontFamily: "HelveticaNeue",
                fontWeight: FontWeight.bold
            ),),
          ),
          Container(
            margin: EdgeInsets.only(left: size.width*0.05,right: size.width*0.05),
            width: size.width,
            height: size.height*0.57,
            child: GridView.count(crossAxisCount: 3,
              controller: _scrollController2,
              crossAxisSpacing: size.width*0.05,
              mainAxisSpacing: size.width*0.05,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: [
                features(imagePath: "images/wifi.png",title: "Internet Offers \n& Services",),
                features(imagePath: "images/smartphone.png", title: "Prepaid Bundles"),
                features(imagePath: "images/code.jpg", title: "Prepaid Bundles"),
                features(imagePath: "images/imtyaz.jpg", title: "IMTYAZ"),
                features(imagePath: "images/transfer.png", title: "Credit Transfer"),
                features(imagePath: "images/call1.png",title: "Customer Care",),
                features(imagePath: "images/laptop.png", title: "ZAIN SERVICES"),
                features(imagePath: "images/router.png", title: "Zain-Fi"),
                features(imagePath: "images/sim1.png", title: "SAME3NI"),

                features(imagePath: "images/news.png", title: "ZAIN NEWS"),
                features(imagePath: "images/gallery.png", title: "GALLERY")






              ],
            ),
          )


        ],
      ),
    );
  }
}








