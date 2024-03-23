

import 'package:diy_beauty_products/Colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';


class FilmDetailsPage extends StatefulWidget {


  const FilmDetailsPage({super.key,
  });



  @override
  State<FilmDetailsPage> createState() => _FilmDetailsPageState();
}

class _FilmDetailsPageState extends State<FilmDetailsPage> {
  

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor:Color.fromARGB(255, 12, 117, 14),
        title: const Text("Product Details",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart,size: 35),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            height: 350,
            width: double.infinity,
            margin: const EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/product6.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Text(
            'Body Perfume',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold)
          ),
    
      
         
          const SizedBox(height: 10),
          Text('Price : ₹ 200.0',   style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.bold,color: appcolor
              ),),
           Text(
             "${'Quantity : 10 PCS'}",style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.bold,color: appcolor
              ),
           ),
          
          const SizedBox(height: 20),
          Text("Description",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontWeight: FontWeight.bold)),
          const SizedBox(height: 5),

          Text('Body perfumes typically consist of a blend of aromatic compounds, essential oils, alcohol, and water. These fragrances may also contain fixatives to stabilize the scent and extend its longevity, as well as preservatives to maintain product freshness. The exact composition can vary greatly depending on the desired fragrance profile, with some perfumes focusing on floral notes, others on fruity or woody scents'),
         
          const SizedBox(height: 20),
          FilledButton.icon(
              
              onPressed: () {},
              icon: const Icon(IconlyLight.bag2),
              label: const Text("Add to cart"))
        ],
      ),
    );
  }
}
