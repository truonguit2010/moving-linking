import 'package:flutter/material.dart';

enum SDTextSize {
  normal,
  gameTitle,
}

extension SDTextSizeExtension on SDTextSize {
  double get size {
    switch (this) {
      case SDTextSize.gameTitle:
        return 16;
      case SDTextSize.normal:
      default:
        return 12;
    }
  }
}

class SDText extends StatelessWidget {
  String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(),
    );
  }
}
