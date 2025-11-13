import 'package:flutter/material.dart';
import 'package:widget_kompleks/detailpage1.dart';

class Homepage1 extends StatelessWidget {
  const Homepage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Homepage 1'),
        backgroundColor: Colors.blue.shade300,
        centerTitle: true,
      ),
      backgroundColor: Colors.blue.shade50,
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.push(context, 
              MaterialPageRoute(builder: (context) => Detailpage1()),
            );
          },
          child: Text('pergi ke halaman kedua'),
        ),
      )
    );
  }
}