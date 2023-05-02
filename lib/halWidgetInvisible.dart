import 'package:flutter/material.dart';
import 'package:mandiri1/halHWICliprrect.dart';
import 'package:mandiri1/halHWIColumn.dart';
import 'package:mandiri1/halHWIContainer.dart';
import 'package:mandiri1/halHWIExpanded.dart';
import 'package:mandiri1/halHWIGridview.dart';
import 'package:mandiri1/halHWIListview.dart';
import 'package:mandiri1/halHWIRow.dart';

class HalWidgetInvisible extends StatelessWidget {
  const HalWidgetInvisible({super.key});

  final double horizontalPadding = 40;
  final double verticalPadding = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: horizontalPadding, 
                vertical: verticalPadding
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(Icons.arrow_circle_left),
                    color: Colors.blue,
                    iconSize: 50,
                  ),
                  SizedBox(
                    width: 100,
                    height: 75,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 50,
                          height: 50,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: const Image(image: AssetImage('assets/images/profil.png')),
                          )
                        ),
                        const SizedBox(
                          child: Text('Mochamad Ridwan', // Todo: Replace Name
                          style: TextStyle(fontSize: 10),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ), 
            const SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text('Halaman', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                  Text('Invisible Widget', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),)
                ]
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: const Text('Silahkan pilih: ', style: TextStyle(fontWeight: FontWeight.bold),)
            ),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    ButtonTheme(
                      child: ElevatedButton.icon(
                        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const HalHWIContainer())); },
                        icon: const Icon(Icons.widgets_rounded),
                        label: const Text('Container'),
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(300, 50), 
                          backgroundColor: Colors.green
                        ),
                      )
                    ),
                    const SizedBox(height: 10),
                    ButtonTheme(
                      child: ElevatedButton.icon(
                        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const HalHWIExpanded())); },
                        icon: const Icon(Icons.widgets_rounded),
                        label: const Text('Expanded'),
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(300, 50), 
                          backgroundColor: Colors.green
                        ),
                      )
                    ),
                    const SizedBox(height: 10),
                    ButtonTheme(
                      child: ElevatedButton.icon(
                        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const HalHWIColumn())); },
                        icon: const Icon(Icons.widgets_rounded),
                        label: const Text('Column'),
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(300, 50), 
                          backgroundColor: Colors.green
                        ),
                      )
                    ),
                    const SizedBox(height: 10),
                    ButtonTheme(
                      child: ElevatedButton.icon(
                        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const HalHWIRow())); },
                        icon: const Icon(Icons.widgets_rounded),
                        label: const Text('Row'),
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(300, 50), 
                          backgroundColor: Colors.green
                        ),
                      )
                    ),
                    const SizedBox(height: 10),
                    ButtonTheme(
                      child: ElevatedButton.icon(
                        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const HalHWIListview())); },
                        icon: const Icon(Icons.widgets_rounded),
                        label: const Text('Listview'),
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(300, 50), 
                          backgroundColor: Colors.green
                        ),
                      )
                    ),
                    const SizedBox(height: 10),
                    ButtonTheme(
                      child: ElevatedButton.icon(
                        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const HalHWICliprrect())); },
                        icon: const Icon(Icons.widgets_rounded),
                        label: const Text('Cliprreact'),
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(300, 50), 
                          backgroundColor: Colors.green
                        ),
                      )
                    ),
                    const SizedBox(height: 10),
                    ButtonTheme(
                      child: ElevatedButton.icon(
                        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const HalHWIGridview())); },
                        icon: const Icon(Icons.widgets_rounded),
                        label: const Text('Gribview'),
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(300, 50), 
                          backgroundColor: Colors.green
                        ),
                      )
                    ),
                    
                  ]
                ),
              )
            )
          ],
        ),
      ),

    );
  }
}