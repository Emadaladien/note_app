import 'package:flutter/material.dart';

class CustomeButton extends StatelessWidget {
  const CustomeButton({
    super.key,
    required this.title,
    this.icon = const Icon(Icons.add, color: Colors.black),
  });

  final String title;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xff62fcd7),
      ),

      margin: EdgeInsets.only(top: 16),
      padding: EdgeInsets.symmetric(vertical: 12),
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width * 0.9,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          SizedBox(width: 8),
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
