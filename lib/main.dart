import 'package:flutter/material.dart';
import 'package:mandiri1/beranda_page.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Ujian Akhir Semester',
    home: FormMasuk(),
  ));
}

class FormMasuk extends StatelessWidget {
  const FormMasuk({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Aplikasi Ujian Akhir Semester',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.deepOrange[200],
      body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(children: [
              // !!! Logo or icons
              const SizedBox(
                height: 50,
              ),
              const Icon(Icons.person, size: 175, color: Colors.blue),

              // !!!  Teks Pembuka
              const SizedBox(height: 35),
              const Text(
                'Selamat Datang',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),
              const Text('Silahkan Masuk', style: TextStyle(fontSize: 14)),

              // !!! Form input username
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(
                    label: Text('username'),
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder()),
              ),

              // !!! Form input passowrd
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(
                    label: Text('password'),
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder()),
              ),

              // !!! Button
              const SizedBox(height: 10),
              ButtonTheme(
                  child: ElevatedButton.icon(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BerandaPage())),
                icon: const Icon(Icons.login),
                label: const Text('Masuk'),
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(65)),
              ))
            ]),
          )),
    );
  }
}
