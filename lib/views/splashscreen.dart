import 'package:flutter/material.dart';
import '../HomePage/home.dart';
import '../logandsigpages/loginpage.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('almzr3a als3yda'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50,),
            Text("WELCOME TO ALMZR3A!",style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 27,
            ),),
            SizedBox(height: 5,),
            Text("Agricultural Automation System",style: TextStyle(fontSize: 16),),
            SizedBox(height: 50,),
            Padding(padding: EdgeInsets.only(left: 15,right: 15),
             child: Image.asset("assets/WhatsApp_Image_2024-02-10_at_2.16.16_PM-removebg-preview.png"),),
            SizedBox(height: 10,),
            Expanded(child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 5,
                    spreadRadius: 2,
                  )
                ],
                borderRadius: BorderRadius.only(topRight: Radius.circular(16),topLeft: Radius.circular(16)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(padding: EdgeInsets.only(left: 15,right: 15),
                  child: Text("The Agricultural Automation System is Designed to help you ",textAlign: TextAlign.center,style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),)),
                  Padding(padding: EdgeInsets.only(left: 15,right: 15),
                      child: Text("The Agricultural Automation System is Designed to interact seamlessly with the main system units  to provide a comprehensive and user-friendly experience and thanks for using this app ",textAlign: TextAlign.center,style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                      ),)),

                  Padding(
                    padding: const EdgeInsets.only(left: 15,right: 15),
                    child: MaterialButton(
                      minWidth: double.infinity,
                      color: Colors.white,
                      elevation: 1,
                      onPressed: (){
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => LoginScreen()),
                        );
                      },
                      child: Text("Get Started",style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                      ),),
                    ),
                  )
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
