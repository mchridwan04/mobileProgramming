import 'package:flutter/material.dart';
import 'package:mandiri1/componentWidgetVisible.dart';

class widgetVisible extends StatefulWidget {
  const widgetVisible({super.key});

  @override
  State<widgetVisible> createState() => _widgetVisible();

}

class _widgetVisible extends State<widgetVisible> {
  // Mangatur nilai padding

  final double horizontalPadding = 40;
  final double verticalPadding = 25;

  // Data
  List daftarWidgetVisible = [
    ['Text', 'assets/icons/text.png', false],
    ['Icon', 'assets/icons/icon.png', false],
    ['Button', 'assets/icons/button.png', false]
  ];

  void toggleInfo(bool value, int index) {
    setState(() {
      daftarWidgetVisible[index][2] = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column (
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Custom app bar
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: verticalPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: () => Navigator.of(context).pop(), icon: const Icon(Icons.arrow_circle_left), color: Colors.blue, iconSize: 50,),

                  SizedBox(
                    width: 100,
                    height: 75,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 50,
                          height: 50,
                          child: ClipRRect(borderRadius: BorderRadius.circular(100), child: const Image(image: AssetImage('assets/images/profil.png'))),
                        ),
                        
                        const SizedBox(
                          child: Text('Mochamad Ridwan', style: TextStyle(fontSize: 10)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            // Teks Pembuka
            const SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Halaman', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                  Text('Visible Widget', style:TextStyle(fontSize: 40, fontWeight: FontWeight.bold))
                ],
              ) 
            ),

            // Item Widget + grid
            const SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: const Divider(
                color: Colors.blue,
                thickness: 1,
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: const Text('Silahkan Pilih:', style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),

            Expanded(
              child: GridView.builder(
                itemCount: daftarWidgetVisible.length,
                padding: const EdgeInsets.all(25),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1 / 1.3,
                ),
                itemBuilder: (context, index) {
                  return componentWidgetVisible(
                    namaItemWidget: daftarWidgetVisible[index][0],
                    iconPath: daftarWidgetVisible[index][1],
                    infoWidgetOn: daftarWidgetVisible[index][2],
                    onChanged: (value) => toggleInfo(value, index),
                  );
                },
              )
            )
          ],
        ),
      ),
    );
  }
}