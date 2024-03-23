import 'package:diy_beauty_products/Colors/colors.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
    List<String>categoryimage=['assets/category.png','assets/category1.png','assets/category2.png','assets/category3.png','assets/category5.png','assets/lip.png'];
    List<String>names=['Face Wash','Body Lotion','Face Soap','Hair Shampoo','Face Cream','Lip Stick'];
  List<Color>colorss=[const Color.fromARGB(255, 228, 191, 188),const Color.fromARGB(255, 221, 134, 163),const Color.fromARGB(255, 134, 215, 137), const Color.fromARGB(255, 255, 210, 143), const Color.fromARGB(255, 121, 183, 234),const Color.fromARGB(255, 199, 110, 214)];
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        toolbarHeight: 80,
        backgroundColor: appcolor,
        title: const Text('Category Products',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Category Products Nears You',style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: size.height*0.02),
            Expanded(
              child: GridView.builder(
                itemCount: categoryimage.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 20,mainAxisSpacing: 20), itemBuilder:(context, index) {
                return Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(color: colorss[index],borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(categoryimage[index],height: 100,width: 100,),
                       SizedBox(height: size.height*0.02),
                      Text(names[index],style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                    ],
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