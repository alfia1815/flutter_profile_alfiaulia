import 'package:flutter/material.dart';

class Latihangabungan extends StatelessWidget {
  const Latihangabungan({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: const Text('Gabungan ListView & GridView dalam Card'),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(
              shrinkWrap: true,
              
              children: [
                const Text(
                  'Daftar Mahasiswa',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 10),

                // ==== List Mahasiswa ====
                const ListTile(
                  leading: Icon(Icons.person, color: Colors.teal),
                  title: Text('Mahasiswa 1'),
                  subtitle: Text('Flutter Developer'),
                ),
                const Divider(),
                const ListTile(
                  leading: Icon(Icons.person, color: Colors.teal),
                  title: Text('Mahasiswa 2'),
                  subtitle: Text('UI Designer'),
                ),

                const SizedBox(height: 20),

                const Text(
                  'Daftar Item Grid',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 10),

                // ==== GridView ====
                GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: List.generate(4, (index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.teal[100 * (index + 2)],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          'Item ${index + 1}',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
