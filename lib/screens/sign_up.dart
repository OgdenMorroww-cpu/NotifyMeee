// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:notifymeee/screens/login_page.dart';
import 'package:notifymeee/screens/widgets/home.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: 60.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/note.jpeg"),
                  radius: 50.0,
                ),
                SizedBox(
                  height: 18.0,
                ),
                Text(
                  "NotifyMeee",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GestureDetector(
                  onDoubleTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => LoginPage(),
                      ),
                    );
                  },
                  child: Text(
                    "Sign in to continue",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 10.0,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14.5),
                      ),
                      prefixIcon: Icon(Icons.email),
                    ),
                  ),
                ),
                SizedBox(height: 6.0),
                Padding(
                  padding: EdgeInsets.only(
                    top: 10.0,
                  ),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14.5),
                      ),
                      prefixIcon: Icon(Icons.security),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 10.0,
                  ),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Re-type password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14.5),
                      ),
                      prefixIcon: Icon(Icons.security),
                    ),
                  ),
                ),
                SizedBox(height: 6.0),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Container(
                    width: 350.0,
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => HomePage(),
                          ),
                        );
                      },
                      color: Theme.of(context).primaryColor,
                      textColor: Colors.white,
                      height: 55.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14.5),
                      ),
                      child: Text("Sign Up"),
                    ),
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
