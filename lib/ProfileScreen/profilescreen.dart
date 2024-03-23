import 'package:diy_beauty_products/Colors/colors.dart';
import 'package:flutter/material.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: appcolor,
        title: Text('Profile',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              SizedBox(height: size.height*0.05),
            Center(child: Text('Profile',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
             SizedBox(height: size.height*0.02),
           Stack(
  children: [
    const CircleAvatar(
      backgroundColor: Color(0xff00A3FF),
      backgroundImage: AssetImage("assets/ppp.jpg"),
      radius: 70.0,
    ),
    Positioned(
      right: 5,
      bottom: 0,
      child: Container(
        child: const Icon(Icons.camera_alt_outlined,color: Colors.black,size: 20,),
        padding: const EdgeInsets.all(7.5),
        decoration: BoxDecoration(
          border: Border.all(
          width: 1,
          color: Colors.white
        ),
        borderRadius: BorderRadius.circular(90.0),
        color: Colors.grey[200]
        )
      )
    )
  ]
),
         
             SizedBox(height: size.height*0.02),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: Column(
              children: [
                  TextFormField(
              decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide.none),fillColor: Colors.grey.withOpacity(0.2),filled: true,hintText: 'Name',prefixIcon: Icon(Icons.person_outline,color: appcolor,)),
            ),
            SizedBox(height: size.height*0.02),
            TextFormField(
              decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide.none),fillColor: Colors.grey.withOpacity(0.2),filled: true,hintText: 'Email',prefixIcon: Icon(Icons.email_outlined,color: appcolor,)),
            ),
               SizedBox(height: size.height*0.02),
            TextFormField(
              decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide.none),fillColor: Colors.grey.withOpacity(0.2),filled: true,hintText: 'Phone',prefixIcon: Icon(Icons.phone_android_outlined,color: appcolor,)),
            ),
               SizedBox(height: size.height*0.04),
              Container(
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(color: appcolor,borderRadius: BorderRadius.circular(10)),
                child: Center(child: Text('UPDATE',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
              )
            
            
              ],
            ),
          )
        
          ],
        ),
      ),
    );
  }
}