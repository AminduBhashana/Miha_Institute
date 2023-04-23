import 'package:assignment_1/theme.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget {
   const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(children: [
        Container(
          padding:  EdgeInsets.only(top: height * 0.075),
          child:  Image(
              image: const AssetImage(
                "assets/image1.jpg",),
              height: height * 0.19,
            ),
        ),
         
         SizedBox(height: height*0.04,),
        Container(
          padding:  EdgeInsets.symmetric(horizontal: 15,vertical: height*0.01),
          child: TextField(
            controller: emailController,
            decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: "email",
                labelStyle:
                    TextStyle(fontStyle: FontStyle.normal, fontSize: 20,color: primary_color),            
                hintText: "jimmy@hotmail.com",
                hintStyle:
                    TextStyle(height:1,fontStyle: FontStyle.normal,fontSize: 20,) ,), 
          ),
        ),
         SizedBox(height: height*0.01,),
        Container(
          padding:  EdgeInsets.symmetric(horizontal: 15,vertical: height*0.01),
          child: TextField(
            controller: passwordController,
            obscureText: true,
            
            decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: "password",
                labelStyle:
                    TextStyle(fontStyle: FontStyle.normal, fontSize: 20,color: primary_color,),                
                hintText: "• • • • • • • • •",
                hintStyle:
                    TextStyle(height:1,fontStyle: FontStyle.normal,fontSize: 20,) ,),
                
          ),
        ),
         SizedBox(height: height*0.008,),
        const Center(
          child: Text("forgot password?",
          style: TextStyle(color: Color(0xFF6D6C6C),fontSize: 20),),
        ),
        SizedBox(height: height*0.03,),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
          width: width * 0.92,
          height: 62,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color(0xFFEE5151),
          ),
          child: const Center(
            child: Text("Sign In",
                  style: TextStyle(color: Color(0xFFFDFDFD),fontSize: 20,fontWeight: FontWeight.bold),),
          ),
        ),
        SizedBox(height: height*0.015),
        const Center(
          child: Text("or",
          style: TextStyle(color: Color(0xFF6D6C6C),fontSize: 20),),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Container(
              padding: const EdgeInsets.all(16.0),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.g_mobiledata_rounded,
                size: 40,
              ),
            ),
            const SizedBox(width: 10,),
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.facebook,
                size: 40,
              ),),
          ],
        ),
        SizedBox(height: height*0.04,),
        Padding(
          padding:  EdgeInsets.only(bottom:height*0.03),
          child: const Center(
            child: Text("Don't have an account? Sign Up",
            style: TextStyle(color: Color(0xFFF14040),fontSize: 20,decoration: TextDecoration.underline),),
          ),
        ),
      ]),
    );  
  }
}