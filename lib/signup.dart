import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Signup extends StatelessWidget {
  Signup({Key? key}) : super(key: key);
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        body: SafeArea(
          child: Center(
            child: Form(
              key: _formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.00),
                    child: Text(
                      "Signup",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Divider(color: Colors.black, thickness: 5),
                  Padding(
                    padding: EdgeInsets.all(8.00),
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Value can't be empty";
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.text,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp("[a-z A-Z]")),
                      ],
                      decoration: InputDecoration(
                          hintText: "Please Enter Your Name",
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(width: 3, color: Colors.black),
                              borderRadius: BorderRadius.circular(50.00))),
                    ),
                  ),
                  Padding(

                    padding: EdgeInsets.all(8.00),


                    child: TextFormField(
                        validator: (value) {

                          if(value!.isEmpty)
                          {
                            return "Mobile Number can't be empty";
                          }
                          else if(value.length!=10){
                            return "Mobile number must be of 10 digit";
                          }
                          else
                          {
                            return null;
                          }

                        },
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            hintText: "Please Enter Mobile number",
                            fillColor: Colors.white,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(width: 3, color: Colors.black),
                                borderRadius: BorderRadius.circular(40.00)))),
                  ),

                  Padding(
                    padding: EdgeInsets.all(8.00),

                    child: TextFormField(


                        validator: (value) {
                          bool emailValid = RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$').hasMatch(value!);
                          if(value.isEmpty){
                            return "Email Address can't be empty";
                          }
                          else if(!emailValid)
                          {
                            return "Email is not valid";
                          }
                          else
                          {
                            return null;
                          }



                        },

                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            hintText: "Please Enter Email : ",
                            fillColor: Colors.white,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(width: 3, color: Colors.black),
                                borderRadius: BorderRadius.circular(50.00)
                            )
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.00),
                    child: TextFormField(
                        validator: (value) {
                          if(value!.isEmpty)
                          {
                            return "Password can't be empty";
                          }
                          else if(value.length<3)
                          {
                            return "password length should be atleast 3 charcter";
                          }
                          else null;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Please Enter password : ",
                            fillColor: Colors.white,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(width: 3, color: Colors.black),
                                borderRadius: BorderRadius.circular(50.00)))),
                  ),
                  ElevatedButton(

                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        print("hurre");
                      } else {
                        print("Not valid");
                      }
                    },
                    child: Text("Signup",
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 30.00,vertical: 10.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0)
                        ),
                        primary: Colors.black
                    ),

                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
