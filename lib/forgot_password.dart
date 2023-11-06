import 'package:flutter/material.dart';
import 'package:login/sign_up.dart';


class ForGot_PassWord extends StatelessWidget {
  const ForGot_PassWord({Key? key}) : super(key: key);

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
                        Container(
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
                  margin: const EdgeInsets.fromLTRB(0, 130, 0, 0),
                  width: 800,
                  height: 700,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(80),
                          topRight: Radius.circular(80))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 30, right: 30, top: 30),
                        child: Text(
                          "Forgot Password",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 30, right: 30, top: 30),
                        child: Text(
                          "Input your email, we will send you an instruction to reset your password.",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
                        child: Form(
                            key: _formKey,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Email",
                                  style: TextStyle(
                                      fontSize: 16, fontWeight: FontWeight.bold),
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
                                const SizedBox(
                                  height: 20,
                                ),

                                const SizedBox(
                                  height: 20,
                                ),


                                const SizedBox(
                                  height: 20,
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      print("Dang nhap thanh cong");
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: const Color.fromARGB(255, 0, 206, 166),
                                  ),
                                  child: const SizedBox(
                                      width: 450,
                                      height: 50,
                                      child: Center(
                                        child: Text(
                                          "SEND",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20
                                              ,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      )),
                                ),
                                const SizedBox(
                                  height: 110,
                                ),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Back to"),
                                    Text(
                                      "  Sign in",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 0, 206, 166),
                                      ),),

                                  ],
                                ),


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
