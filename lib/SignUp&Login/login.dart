import 'package:demographic_information/DemographicInfo/demo_graphicinfo.dart';
import 'package:demographic_information/SignUp&Login/db.dart';
import 'package:demographic_information/SignUp&Login/signup.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login(BuildContext context) async {
    String username = usernameController.text.trim();
    String password = passwordController.text.trim();

    if (username.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            backgroundColor: Colors.red,
            content: Text("Please fill all fields")),
      );
      return;
    }

    var user = await DatabaseHelper.instance.getUser(username, password);
    if (user != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            elevation: 5,
            backgroundColor:  Color(0xFF0E4F94),
            content: Text("Login Successful",style: TextStyle(color: Colors.white),)),
      );
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => TabletPage(formData: {})));

      // Navigate to the home page
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            elevation: 5,
            backgroundColor: Colors.red,
            content: Text("Invalid username or password")),
      );
      
    }
  }

  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 129, 174, 225),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 200, top: 70),
          child: Column(
            children: [
              Container(
                height: 275,
                width: 400,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                     
 
                     Color.fromARGB(255, 239, 241, 240),
                      const Color.fromARGB(255, 228, 233, 233),
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
                child: Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15, left: 15),
                            child: Container(
                              height: 50,
                              width: 370,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Enter your username";
                                  } else {
                                    return null;
                                  }
                                },
                                textCapitalization:
                                    TextCapitalization.sentences,
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
                                  hintText: 'Enter Your userName',
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
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Enter your password";
                                  } else {
                                    return null;
                                  }
                                },
                                textCapitalization:
                                    TextCapitalization.sentences,
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
                     SizedBox(height:5,),
                      MaterialButton(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        color:  Color(0xFF0E4F94),
                        onPressed: () {
                          if (_formkey.currentState!.validate()) {
                            login(context);
                          }
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                     
                       TextButton(
                                     onPressed: () {
                                       Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupPage()));
                                     },
                                     child: Text('Don\'t have an account? Sign up',style: TextStyle(color:Colors.black),),
                                   ),
                    ],
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
