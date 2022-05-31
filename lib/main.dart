import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Stateful Clicker Counter',
      theme: ThemeData(
        // Application theme data, you can set the colors for the application as
        // you want
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Clicker Counter Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hola que hace"),
      ),
      body: SafeArea(
          child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(mainAxisSize: MainAxisSize.max, children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 20),
            child: Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.white,
                ),
              ),
              child: Text(
                'Gilberto Reyes Montelongo',
              ),
            ),
          ),
          Divider(
            thickness: 5,
            indent: 50,
            endIndent: 50,
            color: Colors.green,
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Color(0xFFEEEEEE),
              ),
              child: Image.network(
                'https://raw.githubusercontent.com/AlanGilbertoReyes1/CentralSistem_6toJ/master/787.jpg',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Divider(thickness: 5, indent: 50, endIndent: 50, color: Colors.white),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
            child: Container(
              width: 110,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.white,
                ),
              ),
              child: Text(
                '6J\nProgramación',
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ]),
      )),
    );
  }
}
