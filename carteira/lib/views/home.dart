


import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';


class Home extends StatefulWidget {
  
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
   Scaffold(),
  ];

    return Scaffold(
      resizeToAvoidBottomInset: false, 
      appBar: AppBar(title: Text('Bem vindo, ', 
            style: TextStyle(color: Colors.white),
            ),
       backgroundColor: Colors.blue[700], 
       automaticallyImplyLeading: false,
      iconTheme: IconThemeData(color: Colors.redAccent),
      actions: [
         Padding(
          padding: EdgeInsets.only(right: 20.0),
          child: GestureDetector(
            onTap: () {
                     
                      
                      //Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.rightToLeftWithFade, child: Login()));
            },
            child: Icon(
              Icons.exit_to_app,
              size: 26.0,
            ),
          )
    ),
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
          fixedColor: Colors.green[700],
          iconSize: 30,
          
          items: [
            BottomNavigationBarItem(
              label: "Eu",
              icon: Icon(Icons.person),
            ),
            BottomNavigationBarItem(
              label: "Carteira",
              icon: Icon(Icons.wallet_travel_sharp,)
            ),

            BottomNavigationBarItem(
              label: "Mercado",
              icon: Icon(Icons.attach_money),
            ),
            
            

          ]

      ),
        
      
    );
    
  }
}