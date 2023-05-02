import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class profil extends StatelessWidget {
  const profil ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () => Navigator.of(context).pop(), icon: const Icon(Icons.arrow_circle_left)),
        title: const Text('Profil Saya', style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
          children: [
            // Images Profil
            SizedBox(
              width: 120,
              height: 120,
              child: ClipRRect(borderRadius: BorderRadius.circular(100), child: const Image(image: AssetImage('assets/images/profil.png'))),
            ),
            // name account email
            const SizedBox(height: 10),
            const Text('Mochamad Ridwan', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const Text('mchridwan24@gmail.com',style: TextStyle(fontSize: 14)),

            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {}, 
                child: FaIcon(FontAwesomeIcons.facebook), style: ElevatedButton.styleFrom(shape: const CircleBorder(), backgroundColor: Colors.blue)),
              ],
            ),

            const SizedBox(height: 20),
            const Divider(color: Colors.grey),

            Form(child: Column(
              children: [
                const SizedBox(height: 10),
                TextFormField(
                  initialValue: 'Mochamad Ridwan',
                  decoration: const InputDecoration(label: Text('Nama Lengkap'), prefixIcon: Icon(Icons.person), border: OutlineInputBorder()),
                ),

                const SizedBox(height: 5),
                TextFormField(
                  initialValue: 'mchridwan24@gmail.com',
                  decoration: const InputDecoration(label: Text('email'), prefixIcon: Icon(Icons.email), border: OutlineInputBorder()),
                ),

                const SizedBox(height: 5),
                TextFormField(
                  initialValue: 'Jl. Kudus Pati, Klaling Gajian RT 6 RW 5, Kec. Jekulo, Kabupaten Kudus, Jawa Tengah 59382',
                  decoration: const InputDecoration(label: Text('Alamat'), prefixIcon: Icon(Icons.home), border: OutlineInputBorder()),
                  maxLines: 4,
                ),


                const SizedBox(height: 10),
                ButtonTheme(
                  child: ElevatedButton.icon(
                    onPressed: () { notification(context);},
                    icon: const Icon(Icons.save),
                    label: const Text('Simpan'),
                    style: ElevatedButton.styleFrom(minimumSize: const Size.fromHeight(50), backgroundColor: Colors.green),
                  ),
                )
              ],
              ))
          ],
          ) 
        ),
        ),
    );
  }
}

void notification(BuildContext context) {
  showDialog(
    context: context, 
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Notifikasi!'),
        content: const Text('Simpan data berhasil!'),
        actions: <Widget> [
          ElevatedButton(
            child: const Text ('Oke'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          )
        ],
      );
    }
    );
}