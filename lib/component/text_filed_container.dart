
import 'package:flutter/material.dart';

TextField buildTextField({required String textFind,required BuildContext context}) {
  return TextField(
    style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
    decoration: InputDecoration(
      label: Text(textFind),
        enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Theme.of(context).colorScheme.onSurface)),
      labelStyle: TextStyle(color: Theme.of(context).colorScheme.onSurface),
      border: UnderlineInputBorder(borderSide: BorderSide(color: Theme.of(context).colorScheme.onSurface,style: BorderStyle.solid)),
      // border: OutlineInputBorder(),
    ),
  );
}


TextField buildTextField2({required String textFind,
  required Icon findIcon,required int lineFind,required BuildContext context
}) {
  return TextField(
    maxLines: lineFind,
    style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
    decoration: InputDecoration(
      label: Text(textFind),
      prefixIcon: findIcon,
      labelStyle: TextStyle(color: Theme.of(context).colorScheme.onSurface),
      // icon: Icon(Icons.construction),
      // border: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.black,style: BorderStyle.solid)),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Theme.of(context).colorScheme.onSurface),
      ),
      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Theme.of(context).colorScheme.onSurface)),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Theme.of(context).colorScheme.onSurface)
      )
    ),
  );
}