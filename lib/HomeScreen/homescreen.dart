import 'package:diy_beauty_products/Colors/colors.dart';
import 'package:diy_beauty_products/HomeScreen/productdetailsscreen.dart';

import 'package:flutter/material.dart';


class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List<String>images=['assets/product4.jpg','assets/product3.jpg','assets/product2.jpg','assets/product1.jpg','assets/product5.jpg','assets/product6.jpg'];
  List<String>names=['Soap','Shampoo','Face Cream','Powder','Serum Facepack','Perfume'];
 
  List<Color>colorss=[Colors.green,Colors.pink,Colors.orange,Colors.green,Colors.blue];
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        toolbarHeight: 80,
        backgroundColor: appcolor,title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           
            Text('Beauty products',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),
            Text('Trivandrum,India',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 12),)
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/cart.png',height: 40,width: 40,),
          )
        ],
        ),
        drawer: Drawer(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),),
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search'
                ),
              ),
              SizedBox(height: size.height*0.02),
              Text('Category Products',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                SizedBox(height: size.height*0.02),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Container(
                    height: 45,
                    width: 140,
                      decoration: BoxDecoration(   color: Color.fromARGB(255, 228, 191, 188),borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset('assets/category.png',height: 30,width: 30,),
                          Text('Face Wash',style: TextStyle(color: Colors.white),)
                        ],
                      ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    height: 45,
                    width: 140,
                    decoration: BoxDecoration(   color: const Color.fromARGB(255, 221, 134, 163),borderRadius: BorderRadius.circular(8)),
                     child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset('assets/category1.png',height: 30,width: 30,),
                          Text('Shampoo',style: TextStyle(color: Colors.white),)
                        ],
                      ),
                  ),
                      SizedBox(width: 20),
                  Container(
                    height: 45,
                    width: 140,
                    decoration: BoxDecoration( color: const Color.fromARGB(255, 134, 215, 137),borderRadius: BorderRadius.circular(8)),
                     child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset('assets/category2.png',height: 30,width: 30,),
                          Text('Soap',style: TextStyle(color: Colors.white),)
                        ],
                      ),
                   
                  ),
                      SizedBox(width: 20),
                  Container(
                    height: 45,
                    width: 140,
                    decoration: BoxDecoration(  color: const Color.fromARGB(255, 255, 210, 143),borderRadius: BorderRadius.circular(8)),
                     child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset('assets/category3.png',height: 30,width: 30,),
                          Text('Hair Cream',style: TextStyle(color: Colors.white),)
                        ],
                      ),
                  
                  ),
                      SizedBox(width: 20),
                  Container(
                    height: 45,
                    width: 140,
                    decoration: BoxDecoration(    color: const Color.fromARGB(255, 121, 183, 234),borderRadius: BorderRadius.circular(8)),
                     child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset('assets/category5.png',height: 30,width: 30,),
                          Text('Cream',style: TextStyle(color: Colors.white),)
                        ],
                      ),
                
                  ),
                      SizedBox(width: 20),
                  ],
                ),
              ),
              
            
            
                SizedBox(height: size.height*0.02),
                Text('Beauty Products Nears You',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  SizedBox(height: size.height*0.02),
                Expanded(
                  child: GridView.builder(
                    itemCount: images.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 20,crossAxisSpacing: 20), itemBuilder:(context, index) {
                    return AspectRatio(
      aspectRatio: 2 / 2.2,
      child: GestureDetector(
        onTap: () {
       Navigator.push(context,MaterialPageRoute(builder: (context)=>const FilmDetailsPage()));
        },
        child: Material(
          child: Container(
          
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(images[index]),
                fit: BoxFit.cover
              )
            ),
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  colors: [
                    Colors.black.withOpacity(.8),
                    Colors.black.withOpacity(.0),
                  ]
                )
              ),
              child: 
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(names[index], style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),)
              ),
            ),
          ),
        ),
      ),
    );
                  },),
                )

            ],
          ),
        ),
      
    );
  }
}