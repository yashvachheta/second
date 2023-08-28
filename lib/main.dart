import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login/signup.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      body: SafeArea(
        child: Center(
          child: Form(
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'MSD',

                  style: TextStyle(fontSize: 30 , color: Colors.black),

                ),
                CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage("assets/images/MS-Dhoni.jpg"),
                ),
                Padding(
                  padding: EdgeInsets.all(35.00),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Value can't be empty";
                      } else if (value!.length != 10) {
                        return "number is not valid";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        labelText: "Number",
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Only Mobile Number  : "),
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  ),
                ),
                ElevatedButton(
                  onPressed: () => {
                    if (_formkey.currentState!.validate())
                      {print("hurre")}
                    else
                      {print("Not valid")}
                  },
                  child: Text('Login'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Signup()));
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
