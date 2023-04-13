import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import 'package:tugas_pbm_pertemuan_6/page/home_page.dart';
import 'package:tugas_pbm_pertemuan_6/page/register_page.dart';

// List<String> dataInputan = [];
// TextEditingController controller1 = TextEditingController();
// TextEditingController controller2 = TextEditingController();

class LoginPage extends StatefulWidget {
  // const LoginPage({super.key, required this.dataInputan});
  const LoginPage({super.key});

  // final List<String?> dataInputan;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var loginKey = GlobalKey<FormState>();
    // final dataInputan = widget.dataInputan;
    // String? uname;
    // String? pass;
    // if (dataInputan.isNotEmpty) {
    // uname = dataInputan[0];
    // pass = dataInputan[3];
    // }

    // print(_dataInputan);
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: 250,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 253, 196, 115),
                  Color.fromARGB(255, 255, 109, 190)
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
            child: Column(
              children: const [
                Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 80.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 55, 55, 55),
                    fontStyle: FontStyle.normal,
                  ),
                  textAlign: TextAlign.left,
                ),
                Text(
                  'BMI calculator',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Color.fromARGB(255, 55, 55, 55),
                    fontStyle: FontStyle.normal,
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
          Form(
            key: loginKey,
            child: Padding(
              padding: const EdgeInsets.only(top: 60, left: 30, right: 30),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 8, bottom: 8),
                    child: TextFormField(
                      // controller: controller1,
                      decoration: InputDecoration(
                        hintText: 'Username',
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 12),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 253, 196, 115),
                              width: 2),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 255, 109, 190),
                              width: 1),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 255, 109, 190),
                              width: 2),
                        ),
                      ),
                      style: const TextStyle(fontSize: 16),
                      validator: (value) {
                        if (dataInputan.isNotEmpty) {
                          if (value == null || value.isEmpty) {
                            return 'Fill out this!!';
                            // } else if (value == uname) {
                          } else if (value == dataInputan[0]) {
                            return null;
                          } else {
                            return 'Failed!';
                          }
                        } else {
                          return 'Failed!';
                        }
                      },
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 8, bottom: 8),
                    child: TextFormField(
                      // controller: controller2,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 12),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 253, 196, 115),
                              width: 2),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 255, 109, 190),
                              width: 1),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 255, 109, 190),
                              width: 2),
                        ),
                      ),
                      style: const TextStyle(fontSize: 16),
                      validator: (value) {
                        if (dataInputan.isNotEmpty) {
                          if (value == null || value.isEmpty) {
                            return 'Fill out this!!';
                            // } else if (value == pass) {
                          } else if (value == dataInputan[0]) {
                            return null;
                          } else {
                            return 'Failed!';
                          }
                        } else {
                          return 'Failed!';
                        }
                      },
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromARGB(255, 253, 196, 115),
                          Color.fromARGB(255, 255, 109, 190)
                        ],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    margin: const EdgeInsets.only(top: 50, bottom: 50),
                    child: ElevatedButton(
                      onPressed: () {
                        if (loginKey.currentState!.validate()) {
                          loginKey.currentState!.save();
                          Navigator.pushNamed(context, '/home',
                              arguments: dataInputan
                              // MaterialPageRoute(
                              //   builder: (context) =>
                              //       HomePage(dataInputan: dataInputan),
                              // ),
                              );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 15),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        textStyle: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        backgroundColor: const Color.fromARGB(0, 255, 109, 190),
                      ),
                      child: const Text('Sign In'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: "Don't have an account? ",
                    style: TextStyle(color: Colors.black),
                  ),
                  TextSpan(
                    text: 'Create',
                    style: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.pushNamed(context, '/register'

                            // MaterialPageRoute(
                            //   builder: (context) => const RegisterPage(),
                            // ),
                            );
                      },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
