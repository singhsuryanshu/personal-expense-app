import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveFlatButton extends StatelessWidget {
  final String text;
  final Function handler;

  AdaptiveFlatButton(this.handler, this.text);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            onPressed: handler,
            child: Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          )
        : FlatButton(
            onPressed: handler,
            textColor: Theme.of(context).primaryColor,
            child: Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          );
  }
}
