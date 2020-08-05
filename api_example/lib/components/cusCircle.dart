import 'package:flutter/material.dart';

class CusCircle extends StatelessWidget {
  final bool isFill;
  CusCircle(this.isFill);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: 10,
      decoration: isFill
          ? BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            )
          : BoxDecoration(
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
              shape: BoxShape.circle,
            ),
    );
  }
}
