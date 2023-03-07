// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../EditNoteView.dart';

class ItemView extends StatelessWidget {
  const ItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return const EditNoteView() ;
        }));
      },
      child: Container(
        padding:const EdgeInsets.only(top: 24,bottom: 24,),
        decoration: BoxDecoration(
            color:const Color(0xffFFCC80), borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
                title: const Text(
                  'Flutter tips',
                  style: TextStyle(color: Colors.black,fontStyle: FontStyle.normal),
                ),
                
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text(
                    'Bulid Your Career with ahmed sayed mohamed hamada',
                    style: TextStyle(color: Colors.black.withOpacity(0.4)),
                  ),
                ),
                trailing: const FaIcon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  
                )),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text('May 21,2022',
                  style: TextStyle(color: Colors.black.withOpacity(0.4))),
            ),
          ],
        ),
      ),
    );
  }
}