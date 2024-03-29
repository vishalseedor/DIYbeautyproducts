
import 'package:diy_beauty_products/BottomNavigationBar/bottomnavigationbar.dart';
import 'package:diy_beauty_products/Colors/colors.dart';
import 'package:diy_beauty_products/LoginScreen/roundbutton.dart';
import 'package:flutter/material.dart';


class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
final _formKey = GlobalKey<FormState>();




  TextEditingController namecontroller=TextEditingController();
  TextEditingController phonecontroller=TextEditingController();
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController passswordcontroller=TextEditingController();
  TextEditingController addresscontroller=TextEditingController();

  
  
    bool loading = false;
  @override
  Widget build(BuildContext context) {
      final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
      
        body: Container(
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/newlogin.jpg'),fit: BoxFit.cover)),
          child: Center(
            child: SingleChildScrollView
            (
              child: Padding(
                       padding: const EdgeInsets.all(30),
                       child: Form(
                         key: _formKey,
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                           SizedBox(height: size.height*0.03),
                             const Center(
                               child: Text(
                                 'REGISTER',
                                 style:
                                     TextStyle(fontSize: 28, fontWeight: FontWeight.bold,color: Colors.black),
                               ),
                             ),
                             SizedBox(
                               height: size.height * 0.03,
                             ),
                              const Text(
                               'Name',
                               style: TextStyle(
                                   color: Colors.black, fontWeight: FontWeight.bold,),
                             ),
                             SizedBox(height: size.height * 0.01),
                             TextFormField(
                               
                                controller: namecontroller,
                               keyboardType: TextInputType.text,
                               decoration:  InputDecoration(
                                 
                                 fillColor: Colors.grey[200],
                                 filled: true,
                                 prefixIcon: const Icon(Icons.person_outline,color: Colors.black,),
                                   // hintText: 'Enter Phone Number/Email ID/BN User Id',
                                   hintText: 'Name',
                                   hintStyle: const TextStyle(fontSize: 13),
                                   border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide.none)),
                                   validator: (value) {
                                     if(value!.isEmpty){
                                       return 'Please enter your name';
                                     }
                                   },
                             ),
                             SizedBox(height: size.height * 0.02),
                             const Text(
                               'Phone',
                               style: TextStyle(
                                   color: Colors.black, fontWeight: FontWeight.bold),
                             ),
                             SizedBox(height: size.height * 0.01),
                             TextFormField(
                               controller: phonecontroller,
                               keyboardType: TextInputType.phone,
                               decoration:  InputDecoration(
                                  fillColor: Colors.grey[200],
                                 filled: true,
                                   prefixIcon: const Icon(Icons.mobile_screen_share_outlined,color:Colors.black),
                                   hintText: 'Phone',
                                   hintStyle: const TextStyle(fontSize: 13),
                                   border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide.none)),
                                   validator: (value) {
                                     if(value!.isEmpty){
                                       return 'Please enter your phone';
                                     }
                                   },
                             ),
                                        
                               SizedBox(height: size.height * 0.02),
                             const Text(
                               'Email',
                               style: TextStyle(
                                   color: Colors.black, fontWeight: FontWeight.bold),
                             ),
                             SizedBox(height: size.height * 0.01),
                             TextFormField(
                                controller: emailcontroller,
                               keyboardType: TextInputType.emailAddress,
                               decoration:  InputDecoration(
                                  fillColor: Colors.grey[200],
                                 filled: true,
                                   prefixIcon: const Icon(Icons.email_outlined,color:Colors.black),
                                   // hintText: 'Enter Phone Number/Email ID/BN User Id',
                                   hintText: 'Email',
                                   hintStyle: const TextStyle(fontSize: 13),
                                   border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide.none)),
                                   validator: (value) {
                                     if(value!.isEmpty){
                                       return 'Please enter your email';
                                     }
                                   },
                             ),
                               SizedBox(height: size.height * 0.02),
                             const Text(
                               'Password',
                               style: TextStyle(
                                   color: Colors.black, fontWeight: FontWeight.bold),
                             ),
                             SizedBox(height: size.height * 0.01),
                             TextFormField(
                              controller: passswordcontroller,
                               keyboardType: TextInputType.text,
                               decoration:  InputDecoration(
                                  fillColor: Colors.grey[200],
                                 filled: true,
                                   prefixIcon: const Icon(Icons.lock_outline,color:Colors.black),
                                   // hintText: 'Enter Phone Number/Email ID/BN User Id',
                                   hintText: 'Password',
                                   hintStyle: const TextStyle(fontSize: 13),
                                   border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide.none)),
                                   validator: (value) {
                                     if(value!.isEmpty){
                                       return 'Please enter your password';
                                     }
                                   },
                             ),
                               SizedBox(height: size.height * 0.02),
                             const Text(
                               'Address',
                               style: TextStyle(
                                   color: Colors.black, fontWeight: FontWeight.bold),
                             ),
                             SizedBox(height: size.height * 0.01),
                             TextFormField(
                                controller: addresscontroller,
                               keyboardType: TextInputType.text,
                               decoration:  InputDecoration(
                                  fillColor: Colors.grey[200],
                                 filled: true,
                                   prefixIcon: const Icon(Icons.location_history_outlined,color:Colors.black),
                                   // hintText: 'Enter Phone Number/Email ID/BN User Id',
                                   hintText: 'Address',
                                   hintStyle: const TextStyle(fontSize: 13),
                                   border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide.none)),
                                   validator: (value) {
                                     if(value!.isEmpty){
                                       return 'Please enter your address';
                                     }
                                   },
                             ),
                            
                            
                                         
                             SizedBox(
                               height: size.height * 0.04,
                             ),
                                         
                             RoundButton(
                                 title: 'Register',
                                 loading: loading,
                                 onTap: (){
                                  Navigator.push(context,MaterialPageRoute(builder: (context)=>const HomePage()));
                                 }),
                
                           ],
                         ),
                       ),
                     ),
            ),
          ),
        ),
      ),
    );
  }
}