import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mercado extends StatefulWidget {
  

  @override
  _MercadoState createState() => _MercadoState();
}

class _MercadoState extends State<Mercado> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
            Text('Mercado'),
        ],
      ),
    );
  }
}