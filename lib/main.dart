import 'package:flutter/material.dart';
import 'package:mandiri1/beranda.dart';

void main() {
  runApp(const MaterialApp(
    title: 'APP UAS MP 202053046',
    home: FormMasuk(),
  ));
}

class FormMasuk extends StatelessWidget {
  const FormMasuk({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aplikasi UAS',
            style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              //logo atau icon
              const SizedBox(height: 50),
              const Icon(
                Icons.person_pin,
                size: 175,
                color: Colors.teal,
              ),
              //teks pembuka
              const SizedBox(height: 35),
              const Text('Selamat datang',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              const SizedBox(height: 15),
              const Text('Silahkan masukkan :', style: TextStyle(fontSize: 14)),
              //kolom inputan & tombol masuk
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(
                    label: Text('Username'),
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder()),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(
                    label: Text('Password'),
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder()),
              ),
              const SizedBox(height: 15),
              ButtonTheme(
                child: ElevatedButton.icon(
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const beranda())),
                  icon: const Icon(Icons.login),
                  label: const Text('M a s u k'),
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(65)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
