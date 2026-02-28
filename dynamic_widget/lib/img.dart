import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  final String imgpath;
  const ImagePage(this.imgpath, {super.key});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      
      child: Image.asset(
        imgpath,
         width: 200,
        height: 200,
        fit: BoxFit.cover,  
      ),
    );
    
      }
}
