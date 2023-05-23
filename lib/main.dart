import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Aplikasi',
    home: login(),
  ));
}

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Aplikasi',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            children: [
              const Icon(
                Icons.person_pin,
                size: 150,
                color: Colors.blueGrey,
              ),
              const Text(
                'Selamat Datang',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.green,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                'Silahkan masuk :',
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    label: Text('Username'),
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                initialValue: '',
                decoration: const InputDecoration(
                    label: Text('Password'),
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 15,
              ),
              ButtonTheme(
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.login),
                  label: const Text('Masuk'),
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
