
import 'package:flutter/material.dart';

import 'package:page_transition/page_transition.dart';



// ignore: must_be_immutable
class Login extends StatefulWidget {
  
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String _erro = '';
  bool logado = true;
  
    final email = TextEditingController();
    final senha = TextEditingController();
    final emailRec = TextEditingController();

    bool _obscureText = true;
    
   void toggle(){
     setState(() {
       _obscureText = !_obscureText;
     });
   }

  
   @override
    void initState()   {
      
      
      super.initState();
      
    }
  Widget build(BuildContext context) {

    final emailField = TextField(
      obscureText: false,
      controller: email,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
          helperText: "Digite seu email",

      ),
    );
    final passwordField = TextField(
      obscureText: _obscureText,
      controller: senha,
      decoration: InputDecoration(
        suffixIcon: IconButton(icon: _obscureText ? Icon(Icons.visibility_off) : Icon(Icons.visibility), onPressed: toggle),
        filled: true,
        fillColor: Colors.white,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Senha",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
           helperText: "Digite sua senha",
      ),

    );
    final loginButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.greenAccent[700],
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: (){},
        child: Text("Entrar",
            textAlign: TextAlign.center,

      ),
      ),
    );
    final registerButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.blue[700],
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: (){
          //Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: Cadastro()));
        },
          child: Text("Cadastrar",
          textAlign: TextAlign.center,

          ),
          ),
          );

          return  Scaffold(
            backgroundColor: Colors.white,
          body:  SingleChildScrollView(
            child: Center(
              child: Container(
                width:  MediaQuery.of(context).size.width + 10,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(top: 10),
                      child: SizedBox(
                          height: 255.0,
                          child: Text('Login')

                      ),
                      
                      ),
                     
                      
                      SizedBox(height: 25.0),
                      Container(
                        width: MediaQuery.of(context).size.width + 10,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.only(
                          
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.4),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(2, 6), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          children: <Widget>[
                                SizedBox(height: 15.0),
                                 SizedBox(
                                  width: MediaQuery.of(context).size.width/1.3,
                                  child: emailField,
                                ),
                                
                                SizedBox(height: 25.0),
                                
                                SizedBox(
                                  width: MediaQuery.of(context).size.width/1.3,
                                  child: passwordField,
                                ),
                              
                                SizedBox(
                                  height: 25.0,
                                ),
                                SizedBox(
                                
                                  width: MediaQuery.of(context).size.width/2,
                                  child: loginButon,
                                ),
                                
                                SizedBox(
                                  height: 25.0,
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width/2,
                                  child: registerButon,
                                ),
                                
                                SizedBox(height: 20,),
                                GestureDetector(
                                  onTap: (){
                                    
                                  },
                                  child:Center(child: Text('Esqueci minha senha',
                                  style: TextStyle(fontSize: 17, color: Colors.black, fontStyle: FontStyle.italic)),
                                ),
                                ),
                                SizedBox(
                                  height: 25.0,
                                ),
                          ],

                        )
                      ),
                      
                    ],
                  ),
                ),
              ),
            ),
          ),
    );
  }
}
