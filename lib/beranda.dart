import 'package:flutter/material.dart';

class beranda extends StatelessWidget {
  const beranda({super.key});
//mengatur nilai padding
  final double horizontalPadding = 40;
  final double verticalPadding = 25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        children: [
//custom app bar
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: horizontalPadding, vertical: verticalPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.home_work_rounded,
                    color: Colors.teal, size: 65),
                SizedBox(
                  width: 100,
                  height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          width: 80,
                          height: 80,
                          child: CircleAvatar(
                            backgroundColor: Colors.teal,
                            child: Padding(
                              padding: const EdgeInsets.all(4), // Border radius
                              child: ClipOval(
                                  child: Image.network(
                                      'https://cdn.icon-icons.com/icons2/2468/PNG/512/user_icon_149329.png')),
                            ),
                          )),
                      const SizedBox(
                        child: Text('Mochamad Ridwan',
                            style: TextStyle(fontSize: 10)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          //teks pembuka
          const SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text('Hai Ridwan,',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
              SizedBox(height: 10),
              Text('Menu Aplikasi',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold))
            ],
          ),
          //garis pembatas
          const SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: const Divider(
              color: Colors.teal,
              thickness: 1,
            ),
          ),
          const SizedBox(height: 20),
          const Text('Silahkan pilih : ',
              style: TextStyle(fontWeight: FontWeight.bold)),
          //tombol menu aplikasi
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 10),
                ButtonTheme(
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.home),
                    label: const Text('Beranda'),
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(300, 65),
                        backgroundColor: Colors.teal),
                  ),
                ),
                const SizedBox(height: 10),
                ButtonTheme(
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.person),
                    label: const Text('Profil'),
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(300, 65),
                        backgroundColor: Colors.teal),
                  ),
                ),
                const SizedBox(height: 10),
                ButtonTheme(
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.info),
                    label: const Text('Tentang'),
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(300, 65),
                        backgroundColor: Colors.teal),
                  ),
                ),
                const SizedBox(height: 10),
                ButtonTheme(
                  child: ElevatedButton.icon(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(Icons.arrow_back_ios),
                    label: const Text('Kembali'),
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(300, 65),
                        backgroundColor: Colors.teal),
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
