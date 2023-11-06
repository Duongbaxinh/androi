import 'package:flutter/material.dart';
import 'package:login/sign_up.dart';


class TrangChu extends StatelessWidget {
  const TrangChu({Key? key}) : super(key: key);

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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Stack(
              children: [

                Container(
                  height: 800,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 0, 206, 166),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                    child:
                    Center(
                      child: Image(
                        image: AssetImage('images/Group 2.jpg'),

                      ),
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   children: [
                    //     Container(
                    //       child:
                    //     ),
                    //
                    //   ],
                    // ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
