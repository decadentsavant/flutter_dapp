import 'dart:ui';
import 'package:flutter/material.dart';

class GlassListTile extends StatelessWidget {
  const GlassListTile({
    required this.title,
    super.key,
  });

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
              width: .25,
            ),
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey.shade200.withOpacity(.15),
          ),
          child: ListTile(
            title: title,
          ),
        ),
      ),
    );
  }
}
