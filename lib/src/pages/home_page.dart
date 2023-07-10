import 'package:flutter/material.dart';
import 'package:one_piece_list/src/widgets/header_widget.dart';
import 'package:one_piece_list/src/widgets/list_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 16, 16, 16),
      body: Column(
        children: <Widget>[
          HeaderWidget(),
          ListCharacters(),
          
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},
        backgroundColor: Color.fromARGB(255, 95, 25, 208),
        child: Icon(Icons.add),),
    );
  }
}