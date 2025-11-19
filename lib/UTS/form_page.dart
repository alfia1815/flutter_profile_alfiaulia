import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final namaC = TextEditingController();
  final emailC = TextEditingController();
  final umurC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Page"),
        centerTitle: true,
      ),

      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            TextField(
              controller: namaC,
              decoration: InputDecoration(
                labelText: "Nama",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              controller: emailC,
              decoration: InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              controller: umurC,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Umur",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            const SizedBox(height: 25),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {
                if (namaC.text.isEmpty ||
                    emailC.text.isEmpty ||
                    umurC.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Semua field wajib diisi")),
                  );
                  return;
                }

                if (!emailC.text.contains("@")) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Email harus mengandung @")),
                  );
                  return;
                }

                if (int.tryParse(umurC.text) == null ||
                    int.parse(umurC.text) <= 0) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Umur harus angka positif")),
                  );
                  return;
                }

                Navigator.pop(context, {
                  'nama': namaC.text,
                  'email': emailC.text,
                  'umur': umurC.text,
                });
              },
              child: const Text("Kirim", style: TextStyle(fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}
