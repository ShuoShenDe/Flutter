import 'package:flutter/material.dart';

class mytest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My first AppBar'),
        centerTitle: true,
        backgroundColor: Colors.orange[600],
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        color: Colors.grey,
        child: Text('hello'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text('click me'),
        backgroundColor: Colors.orange[600],
      ),
    );
  }
}

class mybody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
