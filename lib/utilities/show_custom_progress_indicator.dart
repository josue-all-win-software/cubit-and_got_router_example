import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<void> showCustomProgressIndicator(BuildContext context) async {
  showDialog(
    barrierDismissible: false,
    context: context, 
    builder: (context) => const Center(
      child: CupertinoActivityIndicator(
        radius: 30.0,
        color: Colors.white,
      ),
    ),
  );
}


