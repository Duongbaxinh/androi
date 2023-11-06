import 'package:flutter/material.dart';
import 'package:login/check_email.dart';
import 'package:login/sign_up.dart';

import 'TrangChu.dart';
import 'forgot_password.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 0, 206, 166),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                            onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => TrangChu(),)),
                          child: Image(
                            image: AssetImage('images/image_01.jpeg'),
                            width: 100,
                            height: 100,
                          ),
                        ),
                            Positioned(
                            child: Container(
                              width: 200,
                              height: 100,
                              child: Image(
                                image: AssetImage('images/image_05.jpeg'),
                              ),
                            )
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 130, 0, 0),
                  width: 800,
                  height: 700,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(85),
                          topRight: Radius.circular(85))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 30, right: 30, top: 30),
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 30, right: 30, top: 30),
                        child: Text(
                          "Welcome back, Yoo Jin",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 0, 206, 166),),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 30, right: 30, top: 30),
                        child: Form(
                            key: _formKey,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                InkWell(
                                  onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => Check_Email(),)),
                                  child: Text(
                                    "Email",
                                    style: TextStyle(
                                        fontSize: 16, fontWeight: FontWeight.bold),
                                  ),
                                ),

                                 TextFormField(
                                   controller: emailController,
                                   validator: (value) {
                                     if (value!.isEmpty) {
                                       return ("Vui long nhap Email");
                                     }
                                     if (!RegExp(
                                         "^[a-zA-Z0-9+_]+@[a-z0-9A-Z.-]+.[a-z]")
                                         .hasMatch(value)) {
                                      return ("Vui long nhap Emial hop le");
                                     }
                                     return null;
                                   },
                                onSaved: (value) {
                                emailController.text = value!;
                                },
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Password",
                                  style: TextStyle(
                                      fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                                TextFormField(
                                  controller: passwordController,
                                  validator: (value) {
                                    RegExp regex = RegExp(r'^.{6,}$');
                                    if (value!.isEmpty) {
                                      return ("Mật khẩu bắt buộc để đăng nhập");
                                    }
                                    if (!regex.hasMatch(value)) {
                                      return ("Mật khẩu không hợp lệ");
                                    }
                                  },
                                  onSaved: (value) {
                                    passwordController.text = value!;
                                  },
                                  obscureText: true,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                InkWell(
                                  onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => ForGot_PassWord(),)),
                                  child: Text(
                                    "Forgot Password",
                                    style:
                                    TextStyle(fontSize: 16, color: Colors.grey),
                                  ),
                                ),

                                SizedBox(
                                  height: 20,
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      print("Dang nhap thanh cong");
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Color.fromARGB(255, 0, 206, 166),
                                  ),
                                  child: SizedBox(
                                      width: 450,
                                      height: 50,
                                      child: Center(
                                        child: Text(
                                          "Login",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20
                                              ,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      )),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [Text("Or sign in with")],
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.network(
                                      'images/image_02.jpeg',
                                      width: 40,
                                      height: 40,
                                      fit: BoxFit.cover,
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Image.network(
                                      'images/image_03.jpeg',
                                      width: 40,
                                      height: 40,
                                      fit: BoxFit.cover,
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Image.network(
                                      'images/image_04.jpeg',
                                      width: 40,
                                      height: 40,
                                      fit: BoxFit.cover,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 35,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Don't have an account?"),
                                    InkWell(
                                      onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp(),)),
                                      child: Text(
                                        "  Sign Up",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.greenAccent),
                                      )
                                    ),

                                  ],
                                )
                              ],
                            )),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));

  }
}
