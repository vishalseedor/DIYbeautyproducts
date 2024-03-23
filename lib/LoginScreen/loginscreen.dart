

import 'package:diy_beauty_products/Colors/colors.dart';
import 'package:diy_beauty_products/LoginScreen/roundbutton.dart';
import 'package:diy_beauty_products/RegisterScreen/registerscreen.dart';
import 'package:flutter/material.dart';





class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  
  bool rememberMe = true;
  bool loading = false;
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController passwordcontroller =TextEditingController();
  final _formKey = GlobalKey<FormState>();
 


 

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return  SafeArea(
        child: Scaffold(
       
            body: Container(
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/newlogin.jpg'),fit: BoxFit.cover)),
              child: Center(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Form(
                      key: _formKey,
                  
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                    
                         SizedBox(height: size.height*0.15),
                          Center(
                            child: const Text(
                              'LOGIN',
                              style:
                                  TextStyle(fontSize: 28, fontWeight: FontWeight.bold,color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.03,
                          ),
                           const Text(
                            'Email',
                            style: TextStyle(
                                color: Colors.black, fontWeight: FontWeight.bold,),
                          ),
                          SizedBox(height: size.height * 0.01),
                          TextFormField(
                            
                             controller: phonecontroller,
                            keyboardType: TextInputType.emailAddress,
                            decoration:  InputDecoration(
                              
                              fillColor: Colors.grey[200],
                              filled: true,
                              prefixIcon: Icon(Icons.email_outlined,color: Colors.black,),
                                // hintText: 'Enter Phone Number/Email ID/BN User Id',
                                hintText: 'Email',
                                hintStyle: TextStyle(fontSize: 13),
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),borderSide: BorderSide.none)),
                                validator: (value) {
                                  if(value!.isEmpty){
                                    return 'Please enter your phone email';
                                  }
                                },
                          ),
                          SizedBox(height: size.height * 0.03),
                          const Text(
                            'Password',
                            style: TextStyle(
                                color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: size.height * 0.01),
                          TextFormField(
                              controller: passwordcontroller,
                            keyboardType: TextInputType.emailAddress,
                            decoration:  InputDecoration(
                               fillColor: Colors.grey[200],
                              filled: true,
                                prefixIcon: Icon(Icons.lock_outline,color:Colors.black),
                                // hintText: 'Enter Phone Number/Email ID/BN User Id',
                                hintText: 'Password',
                                hintStyle: TextStyle(fontSize: 13),
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),borderSide: BorderSide.none)),
                                validator: (value) {
                                  if(value!.isEmpty){
                                    return 'Please enter your password';
                                  }
                                },
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Row(
                              //   children: [
                              //     GestureDetector(
                              //       onTap: () {
                              //         rememberMe = !rememberMe;
                              //         setState(() {});
                              //       },
                              //       child: Container(
                              //         //margin: const EdgeInsets.only(left: 7),
                              //         width: size.width * 0.05,
                              //         height: size.height * 0.025,
                              //         decoration: BoxDecoration(
                              //             color: Colors.white,
                              //             borderRadius: BorderRadius.circular(2),
                              //             border: Border.all(
                              //                 color: rememberMe
                              //                     ? Colors.blue
                              //                     : Colors.black)),
                              //         child: Center(
                              //             child: rememberMe
                              //                 ? const Icon(
                              //                     Icons.done,
                              //                     size: 15,
                              //                     color: Colors.black,
                              //                   )
                              //                 : Container()),
                              //       ),
                              //     ),
                              //     const SizedBox(
                              //       width: 15,
                              //     ),
                              //   //  const Text('Remember me',style: TextStyle(color: Colors.white),)
                              //   ],
                              // ),
                          
                              
                              InkWell(
                                onTap: () {
                                  
                                },
                                child: const Text(
                                  '',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                                    
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                                    
                          RoundButton(
                              title: 'Login',
                              loading: loading,
                              onTap: () async{
                                  
                            
                              }),
                                  SizedBox(
                            height: size.height * 0.01,
                          ),
                                    
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text('Already have an account ?',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                                  TextButton(onPressed: (){
                                   Navigator.push(context,MaterialPageRoute(builder:(context)=>const RegisterScreen()));
                                
                                  }, child:Text('Register',style: TextStyle(color:Colors.blue,fontWeight: FontWeight.bold),))
                                ],
                              )
                        
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )),
      );
    
  }
}
