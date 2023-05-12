import 'package:flutter/material.dart';

class HalHWIGridview extends StatelessWidget {
  const HalHWIGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_circle_left, color: Colors.blue),
        ),
        title: const Text(
          'GridView',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 100,
                height: 100,
                child: ClipRect(
                  child: OverflowBox(
                    alignment: Alignment.center,
                    child: FittedBox(
                        fit: BoxFit.cover,
                        child: Transform.rotate(
                          angle: 3.14159,
                          child: Image.network(
                            'https://images.unsplash.com/photo-1682687220247-9f786e34d472?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxMjV8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
                          ),
                        )),
                  ),
                ),
              )),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 100,
                height: 100,
                child: ClipRect(
                  child: OverflowBox(
                    alignment: Alignment.center,
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: Image.network(
                        'https://plus.unsplash.com/premium_photo-1664368276702-978a7b61a413?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMDF8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
                      ),
                    ),
                  ),
                ),
              )),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 100,
                height: 100,
                child: ClipRect(
                  child: OverflowBox(
                    alignment: Alignment.center,
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: Image.network(
                        'https://images.unsplash.com/photo-1683524430079-d45876f50fed?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyNHx8fGVufDB8fHx8&auto=format&fit=crop&w=600&q=60',
                      ),
                    ),
                  ),
                ),
              )),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 100,
                height: 100,
                child: ClipRect(
                  child: OverflowBox(
                    alignment: Alignment.center,
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: Image.network(
                        'https://images.unsplash.com/photo-1683122397672-14c6ff3eb008?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw2N3x8fGVufDB8fHx8&auto=format&fit=crop&w=600&q=60',
                      ),
                    ),
                  ),
                ),
              )),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 100,
                height: 100,
                child: ClipRect(
                  child: OverflowBox(
                    alignment: Alignment.center,
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: Image.network(
                        'https://images.unsplash.com/photo-1683294163345-1cd8cd02147f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw5OXx8fGVufDB8fHx8&auto=format&fit=crop&w=600&q=60',
                      ),
                    ),
                  ),
                ),
              )),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 100,
                height: 100,
                child: ClipRect(
                  child: OverflowBox(
                    alignment: Alignment.center,
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: Image.network(
                        'https://images.unsplash.com/photo-1682687982141-0143020ed57a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxMTB8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
                      ),
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
