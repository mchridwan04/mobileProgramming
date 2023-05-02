import 'package:flutter/material.dart';
import 'package:mandiri1/profil.dart';
import 'package:mandiri1/widgetVisible.dart';
import 'package:mandiri1/halWidgetInvisible.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Mochamad Ridwan',
    home: Beranda(),
  ));
}

class Beranda extends StatelessWidget {
  const Beranda ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(Icons.home),
        title: const Text('Mochamad Ridwan', style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              // Logo
              const SizedBox(height: 50),
              const Icon(Icons.flutter_dash, size: 120, color: Colors.blue),

              // Teks Pembuka
              const SizedBox(height: 50),
              const Text('Selamat Datang', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),

              const SizedBox(height: 20),
              const Text('Silakan pilih menu :', style: TextStyle(fontSize: 14)),

              const SizedBox(height: 10),
              ButtonTheme(
                child: ElevatedButton.icon(
                  onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => const profil())); },
                  icon: const Icon(Icons.person), 
                  label: const Text('Profil Saya'),
                  style: ElevatedButton.styleFrom(minimumSize: const Size(300, 50)),
                ),
              ),

              const SizedBox(height: 10),
              ButtonTheme(
                child: ElevatedButton.icon(
                  onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => const widgetVisible())); },
                  icon: const Icon(Icons.widgets_rounded), 
                  label: const Text('Widget Visible'),
                  style: ElevatedButton.styleFrom(minimumSize: const Size(300, 50), backgroundColor: Colors.green),
                ),
              ),
              const SizedBox(height: 10),
              ButtonTheme(
                child: ElevatedButton.icon(
                  onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => const HalWidgetInvisible())); },
                  icon: const Icon(Icons.widgets_rounded), 
                  label: const Text('Widget Invisible'),
                  style: ElevatedButton.styleFrom(minimumSize: const Size(300, 50), backgroundColor: Colors.green),
                ),
              ),


            ]
          ),
        ) 
      ),

    );
  }
}
