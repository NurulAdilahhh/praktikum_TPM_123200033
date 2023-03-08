import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas 1',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyLogin(title: 'Login Screen'),
    );
  }
}

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyLogin> createState() => _MyLogin();
}

class _MyLogin extends State<MyLogin> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: FlutterLogo(),

            ),
            Container(
              height: 100.0,
            ),
            Container(
              width: 500.0,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(60)
                  ),
                  hintText: 'Email',
                ),
              ),
            ),
            Container(
              height: 20.0,
            ),
            Container(
              width: 500,
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(60)
                  ),
                  hintText: 'Password',
                ),
                obscureText: true,
              ),
            ),
            Container(
              height: 20,
            ),
            Container(
              width: 500,
                child: ElevatedButton(
                  onPressed: (){},
                  child: Text("Log in"),
                ),
            ),
            Container(
              child: TextButton(
                onPressed: (){},
                child: Text("Forgot Password"),
                  style: TextButton.styleFrom(
                primary: Colors.grey
                ),
              ),
            )
        ],
    ),
      ),
    );

  }
}
