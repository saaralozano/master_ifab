import 'package:flutter/material.dart';

class CalceusDescriptio extends StatelessWidget {

  final String titulus;
  final String descriptio;

  const CalceusDescriptio({
    super.key,
    required this.titulus,
    required this.descriptio
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20,),        
          Text(
            titulus,
            style: TextStyle(fontFamily: "CuppertinoSystemDisplay", fontSize: 30, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 10,),    
          Text(
            descriptio,
            style: TextStyle(fontFamily: "CuppertinoSystemText", height: 1.6),
          )
        ],
      ),
    );
  }
}