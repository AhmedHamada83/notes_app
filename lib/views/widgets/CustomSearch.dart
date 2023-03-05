import 'package:flutter/material.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 46,
      height: 46,
      decoration: BoxDecoration(color: Colors.black.withOpacity(0.2),
      borderRadius: BorderRadius.circular(16)
      ),
      child: const Center(child: Icon(Icons.search,size: 30,)),
    );
  }
}