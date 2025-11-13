import 'package:flutter/material.dart';
import 'halamantiga.dart';

class Detailpage1 extends StatelessWidget {
  const Detailpage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Page 1'),
        backgroundColor: Colors.green.shade300,
        centerTitle: true,
      ),
      backgroundColor: Colors.green.shade50,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: const Text('Kembali ke homepage'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyWidget()),
                );
              },
              child: const Text('Ke Halaman Ketiga'),
            ),
          ],
        ),
      ),
    );
  }
}