


import 'package:carteira/views/carteira.dart';
import 'package:carteira/views/mercado.dart';
import 'package:carteira/views/perfil.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart' show FaIcon, FontAwesomeIcons;

class Home extends StatefulWidget {
  var user;
  Home({this.user});

  int indexAtual = 0;
  
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
   
  


  @override
   void initState(){

     super.initState();
    //ads futuras
   }
   @override
    void dispose() {
    //ads futuras
    
    super.dispose();
  }
  Widget build(BuildContext context) {
  
  List<Widget> listaTelas = [
    Perfil(user: widget.user),
    Carteira(),
    Mercado(),
  ];

    return Scaffold(
      resizeToAvoidBottomInset: false, 
      appBar: AppBar(title: Text('Bem vindo, ' + widget.user.displayName, 
            style: TextStyle(color: Colors.black),
            ),
       backgroundColor: Colors.grey[200], 
       automaticallyImplyLeading: false,
      iconTheme: IconThemeData(color: Colors.redAccent),
      actions: [
         Padding(
          padding: EdgeInsets.only(right: 20.0),
          child: GestureDetector(
            onTap: () {
                     
                      
                      //Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.rightToLeftWithFade, child: Login()));
            },
            child: Center(child:FaIcon(FontAwesomeIcons.signOutAlt, color: Colors.red,)),
            ),
          )
    
      ],
      
      ),
      body: Column(children: [

          listaTelas[widget.indexAtual]
      ],),

          bottomNavigationBar: BottomNavigationBar(
          currentIndex: widget.indexAtual,
          onTap: (indice){

            setState(() {
              widget.indexAtual = indice;
            }
            );

          },
          type: BottomNavigationBarType.fixed,
          //fixedColor: Colors.red,
          iconSize: 30,
          selectedItemColor: Colors.redAccent,
          selectedFontSize: 20,
          
          items: [
            BottomNavigationBarItem(
              label: "Eu",
              icon: FaIcon(FontAwesomeIcons.user, color: Colors.yellow[900],),
            ),
            BottomNavigationBarItem(
              label: "Carteira",
              icon: FaIcon(FontAwesomeIcons.wallet, color: Colors.blue,),
            ),

            BottomNavigationBarItem(
              label: "Mercado",
              icon:  FaIcon(FontAwesomeIcons.bitcoin, color: Colors.yellow[900],),
            ),
            
            

          ]

      ),
        
      
    );
    
  }
}