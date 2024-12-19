import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:nutritionix/LOGINPAGE/login_page.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';


void main() {
  runApp(const flutterApp());
}
class flutterApp extends StatelessWidget{
  const flutterApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"Flutter App",
      debugShowCheckedModeBanner:false,
      theme:ThemeData(
        primarySwatch:Colors.blue,
      ),
      home:Signuppage(),
    );
  }
}

class Signuppage extends StatefulWidget{

  @override
  State<StatefulWidget> createState()=>SignupState();

}

class SignupState extends State<Signuppage>{



  var nameText=TextEditingController();
  var emailText=TextEditingController();
  var passText=TextEditingController();
  var confirmpassword=TextEditingController();

  //bool variable to hide and show password
  bool isVisible=false;

  //create global variable
  var formKey=GlobalKey<FormState>();

  //connecting the frontend with backend



  void registerUser(BuildContext context, TextEditingController nameText, TextEditingController emailText, TextEditingController passText) async {
    // Request body for user registration
    var regBody = {
      "username": nameText.text,
      "email": emailText.text,
      "password": passText.text,
    };

    try {
      // Send POST request to the backend
      var response = await http.post(
        Uri.parse('http://ec2-15-206-93-136.ap-south-1.compute.amazonaws.com:3000/api/user/register'),
        body: jsonEncode(regBody),
      );

      // Decode JSON response from the backend
      if (response.statusCode == 200) {
        var jsonResponse = jsonDecode(response.body);

        if (jsonResponse["status"] == true) {
          // Navigate to the login page if registration is successful
          if (!context.mounted) return;
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) => Loginpage()),
          );
        } else {
          // Show error message to the user
          if (!context.mounted) return;
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Registration failed: ${jsonResponse["message"]}")),
          );
        }
      } else {
        // Show server error message
        if (!context.mounted) return;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Server error: ${response.statusCode}")),
        );
      }
    } catch (e) {
      // Handle any other errors (e.g., network issues)
      if (!context.mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("An error occurred: $e")),
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Center(
        child:SingleChildScrollView(

          child:Form(
            key:formKey,
            child: Column(
              children:[
                /*Container(
                    height:250,
                    child: Image.asset("assets/images/image3.png")),
                SizedBox(
                  height:20,
                ),*/

                //for user name
                Container(
                  margin:const EdgeInsets.only(top: 20.0),
                  width:300,
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(21),


                  ),
                  child: TextFormField(
                    validator:(value){
                      if(value!.isEmpty){
                        return "user name required";
                      }
                      return null;
                    },
                    controller:nameText,
                    decoration:InputDecoration(
                      hintText:"Enter name",
                      hintStyle: const TextStyle(
                          color: Colors.black54,
                          letterSpacing: 1.5
                      ),
                      suffixStyle: const TextStyle(fontWeight: FontWeight.bold),
                      focusedBorder:OutlineInputBorder(
                        borderRadius:BorderRadius.circular(40),
                        borderSide:const BorderSide(
                          color:Colors.deepOrange,
                        ),

                      ),
                      enabledBorder:OutlineInputBorder(
                        borderRadius:BorderRadius.circular(40),
                        borderSide:const BorderSide(
                          color:Colors.blueAccent,
                        ),
                      ),
                      prefixIcon:const Icon(Icons.person),
                      //fillColor: Colors.purple.shade100,
                      //filled: true,
                    ),
                  ),
                ),

                const SizedBox(
                  height:20,
                ),

                //user email
                Container(
                  margin:const EdgeInsets.only(top: 20.0),
                  width:300,
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(21),


                  ),
                  child: TextFormField(
                    validator:(value){
                      if(value!.isEmpty){
                        return "email is required";
                      }
                      return null;
                    },
                    controller:emailText,
                    decoration:InputDecoration(
                      hintText:"Enter email",
                      hintStyle: const TextStyle(
                          color: Colors.black54,
                          letterSpacing: 1.5
                      ),
                      suffixStyle: const TextStyle(fontWeight: FontWeight.bold),
                      focusedBorder:OutlineInputBorder(
                        borderRadius:BorderRadius.circular(40),
                        borderSide:const BorderSide(
                          color:Colors.deepOrange,
                        ),

                      ),
                      enabledBorder:OutlineInputBorder(
                        borderRadius:BorderRadius.circular(40),
                        borderSide:const BorderSide(
                          color:Colors.blueAccent,
                        ),
                      ),
                      prefixIcon:const Icon(Icons.email),
                      //fillColor: Colors.purple.shade100,
                      //filled: true,
                    ),
                  ),
                ),

                const SizedBox(
                  height:20,
                ),

                //input for password
                Container(
                  margin:const EdgeInsets.only(top: 20.0),
                  width:300,
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(40),

                  ),
                  child:TextFormField(
                    validator:(value){
                      if(value!.isEmpty){
                        return "password is required";
                      }
                      return null;
                    },
                    obscureText:!isVisible,
                    obscuringCharacter:'*',
                    controller:passText,
                    decoration:InputDecoration(
                      hintText:"Enter password",
                      hintStyle: const TextStyle(
                          color: Colors.black54,
                          letterSpacing: 1.5
                      ),
                      focusedBorder:OutlineInputBorder(
                        borderRadius:BorderRadius.circular(40),
                        borderSide:const BorderSide(
                          color:Colors.deepOrange,
                        ),
                      ),
                      enabledBorder:OutlineInputBorder(
                        borderRadius:BorderRadius.circular(40),
                        borderSide:const BorderSide(
                          color:Colors.blueAccent,
                        ),
                      ),
                      prefixIcon:const Icon(Icons.lock),
                      //fillColor: Colors.purple.shade100,
                      // filled: true,
                      suffixIcon:IconButton(
                        onPressed:(){
                          setState((){
                            isVisible=!isVisible;
                          });

                        },
                        icon:Icon(isVisible?Icons.visibility:Icons.visibility_off),
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                  height:20,
                ),

                //confirm password field
                Container(
                  margin:const EdgeInsets.only(top: 20.0),
                  width:300,
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(40),

                  ),
                  child:TextFormField(
                    validator:(value){
                      if(value!.isEmpty){
                        return "password is required";
                      }
                      else if(passText.text!=confirmpassword.text){
                        return "password don't match";
                      }
                      return null;
                    },
                    controller: confirmpassword,
                    obscureText:!isVisible,
                    obscuringCharacter:"*",
                    decoration:InputDecoration(
                        hintText:"confirm password",
                        hintStyle: const TextStyle(
                            color: Colors.black54,
                            letterSpacing: 1.5
                        ),
                        focusedBorder:OutlineInputBorder(
                          borderRadius:BorderRadius.circular(40),
                          borderSide:const BorderSide(
                            color:Colors.deepOrange,
                          ),
                        ),
                        enabledBorder:OutlineInputBorder(
                          borderRadius:BorderRadius.circular(40),
                          borderSide:const BorderSide(
                            color:Colors.blueAccent,
                          ),
                        ),
                        prefixIcon:const Icon(Icons.lock),
                        //fillColor: Colors.purple.shade100,
                        //filled: true,
                        suffixIcon:IconButton(
                          onPressed:(){
                            setState(() {
                              isVisible=!isVisible;
                            });

                          },
                          icon:Icon(isVisible?Icons.visibility:Icons.visibility_off),
                        )
                    ),
                  ),
                ),

                const SizedBox(
                  height:20,
                ),

                Container(
                  margin:const EdgeInsets.only(top: 20.0),
                  width:300,
                  color:Colors.blueAccent.shade200,
                  child:TextButton(
                    onPressed:(){

                      if(formKey.currentState!.validate()){
                        registerUser(context, nameText, emailText, passText);

                      }
                    },
                    child:const Text("SIGN UP",
                        style:TextStyle(
                            fontSize:20,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5)
                    ),
                  ),
                ),

                const SizedBox(
                  height:30,
                ),

                Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children:[
                    const Text("Already have Account?",
                        style:TextStyle(
                            fontSize:18,
                            color: Colors.black45,
                            fontWeight:FontWeight.bold,
                            letterSpacing: 1.2)
                    ),

                    const SizedBox(
                      width:10,
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Loginpage()));
                      },
                      child: const Text("Login",
                        style:TextStyle(
                            fontSize:18,
                            color: Colors.blue,
                            fontWeight:FontWeight.bold,
                            letterSpacing: 1.2),

                      ),
                    ),

                  ],
                ),
              ],
            ),
          ),
        ),
      ),


    );
  }

}
