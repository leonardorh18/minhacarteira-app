import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Perfil extends StatefulWidget {
  var user;
  Perfil({this.user});

  @override
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  @override
  Widget build(BuildContext context) {
   return Container(
      child: Column(
        children: [
            Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Center(
              child: Container(
                    width: 100.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover, image: NetworkImage(widget.user.photoUrl)),
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      color: Colors.redAccent,
                    ),
                  ),
              ),
            ),
            SizedBox(height: 40,),
            Container(
              width: MediaQuery.of(context).size.width/1.5,
              child: Column(
                children: [

                     Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.orange[300],
                        child: MaterialButton(
                          minWidth: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          onPressed: (){
                            
                          },
                            child: Text("Visualizar histórico de compras",
                            textAlign: TextAlign.center,

                            ),
                        ),
                     ),


                ],
              )

            ),
        ],
      ),
    );
  }
}