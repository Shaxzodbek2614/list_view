import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>_HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text("ListView",
          style: TextStyle(color: Colors.white)),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(24),
        child: ListView.separated(
            itemBuilder: (context, index){
              return Text("Assalomu alaykum $index",);
            },
            separatorBuilder: (context,index){
              return Text("---------------------",);
            },
            itemCount: 30),
    ),
    );
  }
}