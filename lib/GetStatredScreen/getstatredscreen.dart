import 'package:diy_beauty_products/Colors/colors.dart';
import 'package:diy_beauty_products/LoginScreen/loginscreen.dart';
import 'package:flutter/material.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
 
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
         backgroundColor: appcolor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(child: Text('Skin Care Products &',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900,fontSize: 40),)),
                 const Center(child: Text('Cosmetics',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900,fontSize: 40))),
                  SizedBox(height: size.height*0.01),
                 const Center(child: Text('Beauty gives the confidence you deserve are a great way to ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                 SizedBox(height: size.height*0.01),
                 const Center(child: Text(' express yourself and boost your confidence. ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                 Center(child: Image.asset('assets/get.png')),
                 Center(child: SizedBox(
                  width: size.width*0.6,
                  height: size.height*0.06,
                   child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder:(context)=> const LoginScreen()));
                    }, child:const Text('Get Started',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                 ),)
            
              ],
            ),
          ),
        ),
        
        
        
      ),
      
    );
  }
}