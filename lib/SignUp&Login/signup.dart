import 'package:demographic_information/SignUp&Login/db.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void signup(BuildContext context) async {
    String username = usernameController.text.trim();
    String password = passwordController.text.trim();

    if (username.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          elevation: 5,
          backgroundColor: Colors.red,
          content: Text("Please fill all fields")),
      );
      return;
    }

    int id = await DatabaseHelper.instance.insertUser(username, password);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.green,
        content: Text("User Registered: $id")),
    );
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color.fromARGB(255, 115, 165, 172),
     
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 200,top: 70),
          child: Column(
           
            children: [
              Container(
                height: 265,
                width: 400,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      const Color.fromARGB(255, 241, 238, 241),
                      const Color.fromARGB(255, 239, 240, 241),
                    ],
                    begin: Alignment.bottomLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.8),
                      offset: Offset(0, 1),
                      blurRadius: 4,
                      spreadRadius: 3,
                    ),
                  ],
                ),
                child: Column(
                  
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text('Sign Up',style:TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:20, left: 15),
                          child: Container(
                            height: 50,
                            width: 370,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Enter your username";
                                } else {
                                  return null;
                                }
                              },
                              textCapitalization: TextCapitalization.sentences,
                              controller: usernameController,
                              cursorColor: Colors.black,
                              cursorHeight: 25,
                              cursorWidth: 2,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),

                              autofocus: true,
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                hintText: 'Enter Your Name',
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                // errorText: errorTextval.isEmpty? null:errorTextval
                              ),
                              //   onChanged: (value) {
                              // setState(() {

                              // });
                              //   },
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Container(
                            height: 50,
                            width: 370,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: TextFormField(
                              // validator: (value) {
                              //   if (value!.isEmpty) {
                              //     return "Enter your username";
                              //   } else {
                              //     return null;
                              //   }
                              // },
                              textCapitalization: TextCapitalization.sentences,
                              controller: passwordController,
                              cursorColor: Colors.black,
                              cursorHeight: 25,
                              cursorWidth: 2,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),

                              autofocus: true,
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                hintText: 'Enter Your password',
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                              ),
                              //   onChanged: (value) {
                              // setState(() {

                              // });
                              //   },
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                        
                        borderRadius: BorderRadius.circular(5)
                      ),
                       color:  Color(0xFF0E4F94),
                      onPressed: () => signup(context),
                      child: Text("Sign up",style: TextStyle(color: Colors.white),),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
