import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class componentWidgetVisible extends StatelessWidget {
final String namaItemWidget;
final String iconPath;
final bool infoWidgetOn;
void Function(bool)? onChanged;

componentWidgetVisible({
  super.key,
  required this.namaItemWidget,
  required this.iconPath,
  required this.infoWidgetOn,
  required this.onChanged
});

@override
Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Container(
      decoration: BoxDecoration(
        color: infoWidgetOn ? Colors.grey[900] : Colors.white,
        borderRadius: BorderRadius.circular(24)
      ),
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // icon
          Image.asset(
            iconPath,
            height: 65,
            color: infoWidgetOn ? Colors.white : Colors.black,
          ),
          
          // Nama Item Widget + Swich info
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    namaItemWidget,
                    style: TextStyle(
                      fontWeight: FontWeight.bold, 
                      fontSize: 16,
                      color: infoWidgetOn ? Colors.white : Colors.black
                    ),
                  ),
                )
              ),
              Transform.rotate(
                angle: pi / 2,
                child: CupertinoSwitch(value: infoWidgetOn, onChanged: onChanged),
                )
            ],
          )
        ]
      ),
    ),
  );
}
}