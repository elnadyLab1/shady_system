// ignore: file_names
import 'package:flutter/material.dart';

TextButton t = TextButton(
  child: const Text('Woolha.com'),
  style: TextButton.styleFrom(
    primary: Colors.teal,
    // onPrimary: Colors.white,
    onSurface: Colors.red,
    shadowColor: Colors.red,
    minimumSize: const Size.fromWidth(double.infinity),
    elevation: 5,
    side: const BorderSide(color: Colors.red, width: 5),
    shape: const BeveledRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(5),
      ),
    ),
    textStyle: const TextStyle(
        color: Colors.black, fontSize: 40, fontStyle: FontStyle.italic),
  ),
  onPressed: () {},
);

/*

Below is the list of named parameters you can pass to TextButton.styleFrom static method.

    Color primary: Used to construct ButtonStyle.foregroundColor and ButtonStyle.overlayColor.
    Color onSurface: Used to construct ButtonStyle.foregroundColor when the button is disabled.
    Color backgroundColor: Used to construct ButtonStyle.backgroundColor.
    Color shadowColor: The shadow color of the button's Material.
    double elevation: The elevation of the button's Material.
    TextStyle textStyle: The style for Text widget.
    EdgeInsetsGeometry padding: The padding between the button's boundary and its child..
    Size minimumSize: The minimum size of the button.
    BorderSide side:The color and weight of the button's outline.
    OutlinedBorder shape: The shape of the button's underlying Material.
    MouseCursor enabledMouseCursor: Defines the MouseCursor when the button is enabled. Used to construct ButtonStyle.mouseCursor.
    MouseCursor disabledMouseCursor: Defines the MouseCursor when the button is disabled. Used to construct ButtonStyle.mouseCursor.
    VisualDensity visualDensity: How compact the button's layout will be.
    MaterialTapTargetSize tapTargetSize: The minimum size of area where the button may be pressed..
    Duration animationDuration: The duration of animated changes for shape and elevation.
    bool enableFeedback: Whether detected gestures should provide acoustic and/or haptic feedback..


    TextButton Properties

    Key key: The widget's key, used to control if it should be replaced.
    VoidCallback onPressed *: The callback to be called when the button is tapped.
    VoidCallback onLongPress: The callback to be called when the button is long pressed.
    ButtonStyle style: Defines the style for the button.
    FocusNode focusNode: Focus node of the widget.
    bool autofocus: Whether this widget will be selected as initial focus. Defaults to false
    Clip clipBehavior: Defines how the content is clipped. Defaults to Clip.none.
    Widget child *: The button's label.

*/
