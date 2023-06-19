import 'package:flutter/material.dart';

class BerandaPage extends StatelessWidget {
  const BerandaPage({super.key});

  final double horizontalPadding = 40;
  final double vertikalPadding = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Column(children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding, vertical: vertikalPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(Icons.home, color: Colors.black87, size: 65),
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
                        backgroundColor: Colors.cyan,
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: ClipOval(
                            child: Image.network(
                                'https://cdn.icon-icons.com/icons2/2468/PNG/512/user_icon_149329.png'),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      child: Text(
                        'Mochamad Ridwan',
                        style: TextStyle(fontSize: 10),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),

        // !!! Teks Information
        const SizedBox(height: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text('Mochamad Ridwan',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text(
              'Menu Aplikasi',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.normal),
            )
          ],
        ),

        // !!! Line
        const SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
          child: const Divider(
            color: Colors.red,
            thickness: 2,
          ),
        ),

        // !!! Buttons
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
                    backgroundColor: Colors.indigo),
              )),
              const SizedBox(height: 10),
              ButtonTheme(
                  child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.home),
                label: const Text('Beranda'),
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(300, 65),
                    backgroundColor: Colors.indigo),
              )),
              const SizedBox(height: 10),
              ButtonTheme(
                  child: ElevatedButton.icon(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(Icons.home),
                label: const Text('Kembali'),
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(300, 65),
                    backgroundColor: Colors.indigo),
              )),
            ],
          ),
        ))
      ]),
    );
  }
}
