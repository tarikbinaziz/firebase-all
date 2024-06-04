import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  String title;
  final VoidCallback onTap;
  RoundButton({Key? key, required this.title,required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            color: Colors.deepPurple, borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(title,style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}
