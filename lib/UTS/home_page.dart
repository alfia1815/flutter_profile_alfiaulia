import 'package:flutter/material.dart';
import 'form_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String nama = '';
  String email = '';
  String umur = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomePage"),
        centerTitle: true,
      ),

      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Data Pengguna",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 12),

                    Text("Nama  : $nama", style: const TextStyle(fontSize: 16)),
                    Text("Email : $email", style: const TextStyle(fontSize: 16)),
                    Text("Umur  : $umur", style: const TextStyle(fontSize: 16)),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 30),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
              onPressed: () async {
                final data = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FormPage(),
                  ),
                );

                if (data != null) {
                  setState(() {
                    nama = data['nama'];
                    email = data['email'];
                    umur = data['umur'];
                  });
                }
              },
              child: const Text(
                "Isi Form",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
