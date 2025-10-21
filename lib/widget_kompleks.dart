import 'package:flutter/material.dart';

class WidgetKompleks extends StatelessWidget {
  const WidgetKompleks({super.key});

  @override
  Widget build(BuildContext context) {
    // Data produk
    final List<Map<String, String>> produk = [
      {
        'nama': 'Air Mineral Aqua',
        'deskripsi': 'Aqua botol 600ml',
        'gambar': 'assets/images/aqua.jpeg',
      },
      {
        'nama': 'Air Mineral LeMinerale',
        'deskripsi': 'LeMinerale 330ml',
        'gambar': 'assets/images/lemineral.jpeg',
      },
      {
        'nama': 'Air Mineral Cleo',
        'deskripsi': 'Cleo 550ml',
        'gambar': 'assets/images/cleo.jpg',
      },
      {
        'nama': 'Air Mineral Nestle',
        'deskripsi': 'nestle 1.5 Liter',
        'gambar': 'assets/images/nestle.jpg',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Kompleks'),
        backgroundColor: Colors.deepPurple.shade200,
        centerTitle: true,
      ),
      backgroundColor: Colors.purple.shade50,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            //listview
            const Text(
              'Daftar Produk (ListView + Card)',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: produk.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.white,
                  margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  elevation: 3,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(produk[index]['gambar']!),
                      radius: 25,
                    ),
                    title: Text(produk[index]['nama']!,
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text(produk[index]['deskripsi']!),
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Kamu memilih ${produk[index]['nama']}'),
                          duration: const Duration(seconds: 1),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
            const SizedBox(height: 20),

            //gridview
            const Text(
              'Grid Produk (GridView + Card)',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              childAspectRatio: 0.85,
              padding: const EdgeInsets.all(10),
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              children: produk.map((item) {
                return GestureDetector(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Kamu menekan ${item['nama']}'),
                        duration: const Duration(seconds: 1),
                      ),
                    );
                  },
                  child: Card(
                    elevation: 5,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(15)),
                            child: Image.asset(
                              item['gambar']!,
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          item['nama']!,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                        Text(
                          item['deskripsi']!,
                          style: const TextStyle(fontSize: 12),
                        ),
                        const SizedBox(height: 5),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
