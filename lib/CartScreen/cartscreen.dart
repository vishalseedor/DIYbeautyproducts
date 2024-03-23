import 'package:diy_beauty_products/CartScreen/cartitem.dart';
import 'package:diy_beauty_products/Colors/colors.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: appcolor,title: Text('Cart Products',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
        
      
      ),
      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
          child: CartItem(),
        );
      },),
    );
  }
}