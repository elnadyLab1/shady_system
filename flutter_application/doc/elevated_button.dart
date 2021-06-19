import 'package:flutter/material.dart';

ElevatedButton e = ElevatedButton(
  style: // TextButton.styleFrom, ElevatedButton.styleFrom, OutlinedButton.styleFrom
      ButtonStyle(
    // backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
    backgroundColor: MaterialStateProperty.resolveWith<Color?>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.pressed)) return Colors.red;
        // return Theme.of(context).colorScheme.primary.withOpacity(0.5);
        return null; // Use the component's default.
      },
    ),
  ),
  onPressed: () {},
  child: const Text(''),
);

// https://api.flutter.dev/flutter/material/ButtonStyle-class.html
