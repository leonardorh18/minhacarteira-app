import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart' show FaIcon, FontAwesomeIcons;
class Carteira extends StatefulWidget {
  

  @override
  _CarteiraState createState() => _CarteiraState();
}

class _CarteiraState extends State<Carteira> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.black,
                minimumSize: Size(double.infinity, 50),
              ),
              icon: FaIcon(FontAwesomeIcons.bitcoin, color: Colors.orange[700],),
              label: Text("Adicionar compra de ativo"),
              onPressed: (){
          
                  
                },
              
              ),
        ],
      ),
    );
  }
}