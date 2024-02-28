import 'package:diy_beauty_products/Colors/colors.dart';
import 'package:flutter/material.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({super.key});

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back,color: Colors.white,),
        toolbarHeight: 80,
        backgroundColor: appcolor,
        title: const Text('Beauty Products',style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide.none,borderRadius: BorderRadius.circular(10)),hintText: 'Search',suffixIcon: Icon(Icons.search,color: appcolor),fillColor: Colors.white,filled: true),
            ),
            SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                itemCount: 10,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 20,mainAxisSpacing: 20,childAspectRatio: 0.9),
               itemBuilder:(context, index) {
                
                 return Container(
                  height: 250,
                  width: 250,
                
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black,width: 0.2),
                  gradient: LinearGradient(colors: [Colors.grey.shade300,Colors.white])),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(child: Image.asset('assets/get.png',scale: 4,)),
                        const Text('Body Lotion (100 ml),',style: TextStyle(fontWeight: FontWeight.bold),),
                        const Text('₹ 100.00',style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                 );
               },),
            ),
          ],
        ),
      ),
      
    );
  }
}