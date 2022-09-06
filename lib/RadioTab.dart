import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/radio_header_image.png'),
          Text('إذاعة القرآن الكريم')
        ],
      ),
    );
  }
}
