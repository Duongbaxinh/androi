import 'package:flutter/material.dart';
import 'package:login/sign_up.dart';


class Check_Email extends StatelessWidget {
  const Check_Email({Key? key}) : super(key: key);

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
                          "Check Email",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 30, right: 30, top: 30),
                        child: Text(
                          "Please check your email for the instructions on how to reset your password.",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,),
                        ),
                      ),
                      SizedBox(height: 40,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            'images/image_06.jpeg',
                            width: 180,
                            height: 180,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),

                      const SizedBox(
                        height: 80,
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
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
