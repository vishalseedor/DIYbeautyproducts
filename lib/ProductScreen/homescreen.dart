import 'package:animate_do/animate_do.dart';
import 'package:diy_beauty_products/CategoryScreen/pages/categoryscreen.dart';
import 'package:diy_beauty_products/Colors/colors.dart';
import 'package:diy_beauty_products/ExtraScreens/loadingscreen.dart';
import 'package:diy_beauty_products/FavouriteScreen/pages/favouritescreen.dart';
import 'package:diy_beauty_products/Feedbackscreen/feedbackscreen.dart';
import 'package:diy_beauty_products/LoginScreen/loginscreen.dart';
import 'package:diy_beauty_products/ProductScreen/provider/productprovider.dart';
import 'package:diy_beauty_products/ProductScreen/widgets/allproductwidget.dart';
import 'package:diy_beauty_products/ProfileScreen/profilescreen.dart';
import 'package:diy_beauty_products/ProfileScreen/provider/userprovider.dart';
import 'package:diy_beauty_products/ReciepeScreen/pages/recipescreen.dart';
import 'package:diy_beauty_products/ViewDiscussionScreen/pages/discussionscreen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';


class ProductScreen extends StatefulWidget {
   static const routeName = 'all_products_screen';
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    Provider.of<ProductProvider>(context, listen: false)
        .getAllProductData(context: context);
    Provider.of<UserProvider>(context,listen: false)
    .getUsertData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final product = Provider.of<ProductProvider>(context);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: appcolor,
        toolbarHeight: 80,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Beauty Products',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
            Text('Purchase your products',style: TextStyle(color: Colors.white,fontSize: 13),)
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/sk.png',height: 40,width: 40,
            ),
          )
        ],
      ),
       drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(color:appcolor),
                currentAccountPicture: const CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/new.png'),
                ),
                accountName: Consumer<UserProvider>(builder: (context, value, child) {
                String userAddress = "";
                for (var i = 0; i < value.users.length; i++) {
                  userAddress = value.users[i].name;
                  print(userAddress+'vvvvvvvvv');
                }
                return Text(
                  '$userAddress',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w900),
                ); 
              }),
                accountEmail:Consumer<UserProvider>(builder: (context, value, child) {
                String userAddress = "";
                for (var i = 0; i < value.users.length; i++) {
                  userAddress = value.users[i].email;
                  print(userAddress+'vvvvvvvvv');
                }
                return Text(
                  '$userAddress',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                );
              }),),
            ListTile(
              leading:  Icon(IconlyBold.home,color:appcolor,),
              title: const Text('Dashboard',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
              onTap: () {
               
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProductScreen()));
              },
            ),
             InkWell(
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder:(context)=>const CategoryScreen()));
              },
               child: ListTile(
                leading: Icon(IconlyBold.bookmark,color: appcolor,),
                title: Text('Categories',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                           ),
             ), 
           
          InkWell(
              onTap: () {
              Navigator.push(context,MaterialPageRoute(builder:(context)=>const FavouriteScreen()));
              },
               child: ListTile(
                leading: Icon(IconlyBold.heart,color:appcolor,),
                title: Text('My Favourites',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                           ),
             ),
             ListTile(
              leading: Icon(IconlyBold.paper,color:appcolor,),
              title: Text('Recipies',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
              onTap: (){
                   Navigator.push(context,MaterialPageRoute(builder:(context)=>const ReciepeScreen()));
              },
                         ),
              InkWell(
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder:(context)=>const DiscussionScreen()));
              },
               child: ListTile(
                leading: Icon(IconlyBold.shieldDone,color:appcolor,),
                title: Text('Discussion',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                           ),
             ),
             InkWell(
                onTap: (){
                Navigator.push(context,MaterialPageRoute(builder:(context)=>const SupportScreen()));
              },
               child: ListTile(
                leading: Icon(IconlyBold.message,color:appcolor,),
                title: Text('Feedback',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                           ),
             ),
            ListTile(
              leading:  Icon(IconlyBold.profile,color:appcolor,),
              title: const Text('Profile',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder:(context)=>ProfileScreen()));
              },
            ),
            ListTile(
              leading:  Icon(IconlyBold.logout,color:appcolor,),
              title: const Text('Logout',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text(
                        'Logout',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      content:
                          const Text('Are you sure want to exit this app?'),
                      actions: <Widget>[
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(backgroundColor:appcolor),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginScreen()));
                          },
                          child: Text(
                            'OK',
                            style: TextStyle(
                              fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        ElevatedButton(
                                style: ElevatedButton.styleFrom(backgroundColor:appcolor),
                          onPressed: () {
                            // Close the dialog
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            'CANCEL',
                            style: TextStyle(
                               fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
      
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: searchController,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(12.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(99),
                            borderSide: BorderSide.none,
                          ),
                          fillColor: Colors.grey[200],
                          filled: true,
                          prefixIcon: Icon(
                            Icons.search,
                          ),
                          hintText: "Search here...",
                          hintStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        style: const TextStyle(color: Colors.black),
                        onChanged: (value) {
                          if (value != "") {
                            String searchQuery = value.toLowerCase();
                            print("hhhhhhhhh");
                            product.getSearchData(value: searchQuery);
                          }
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: IconButton.filled(
                        onPressed: () {},
                        icon: const Icon(IconlyLight.filter),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 170,
                child: Card(
                  color: Colors.green.shade50,
                  elevation: 0.1,
                  shadowColor: Colors.green.shade50,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Beauty Products and Tips",
                                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      color: Colors.green.shade700, fontWeight: FontWeight.bold,
                                    ),
                              ),
                              const Text("Get free support from our customer service"),
                              FilledButton(
                                onPressed: () async {
                                  final Uri url = Uri(
                                    scheme: 'tel',
                                    path: "887 012 0688",
                                  );
                                  if (await canLaunch(url.toString())) {
                                    await launch(url.toString());
                                  } else {
                                    print('cannot launch this url');
                                  }
                                },
                                child: const Text(
                                  "Call now",
                                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Image.asset(
                          'assets/fav.png',
                          width: 140,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: size.height*0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Featured Beauty products Nears You",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.02),
              FadeInUp(
                duration: const Duration(milliseconds: 1500),
                child: product.loadingSpinner
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const LoadingScreen(title: 'Loading'),
                          CircularProgressIndicator(
                            color: Colors.green,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      )
                    : product.products.isEmpty
                        ? Center(
                            child: const Text(
                            'No Products ...',
                            style: TextStyle(color: Colors.green),
                          ))
                        : product.searchProducts.isEmpty && searchController.text.isNotEmpty
                            ? Center(
                                child: Text(
                                  'No Products Available',
                                  style: TextStyle(color: Colors.green),
                                ),
                              )
                            : searchController.text.isNotEmpty && product.searchProducts.isNotEmpty
                                ? SizedBox(
                                  //  height: size.height * 0.6,
                                    child: GridView.builder(
                                      itemCount: product.searchProducts.length,
                                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                        childAspectRatio: 0.8,
                                        crossAxisSpacing: 10,
                                        mainAxisSpacing: 10,
                                      ),
                                      scrollDirection: Axis.vertical,
                                      itemBuilder: (context, index) {
                                        return SingleChildScrollView(
                                          child: AllProductWidget(
                                            id: product.searchProducts[index].id,
                                            productname: product.searchProducts[index].productName,
                                            price: product.searchProducts[index].price,
                                            image: product.searchProducts[index].image,
                                            
                                          
                                          ),
                                        );
                                      },
                                    ),
                                  )
                                : SizedBox(
                                    height: size.height * 0.6,
                                    child: GridView.builder(
                                      itemCount: product.products.length,
                                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                        childAspectRatio: 0.72,
                                        crossAxisSpacing: 10,
                                        mainAxisSpacing: 10,
                                      ),
                                      scrollDirection: Axis.vertical,
                                      itemBuilder: (context, index) {
                                        return SingleChildScrollView(
                                          child: AllProductWidget(
                                            id: product.products[index].id,
                                            productname: product.products[index].productName,
                                            price: product.products[index].price,
                                            image: product.products[index].image,
                                            
                                          
                                          ),
                                        );
                                      },
                                    ),
                                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
