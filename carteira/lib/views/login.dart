
import 'package:carteira/views/Home.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart' show FaIcon, FontAwesomeIcons;
import 'package:page_transition/page_transition.dart';



// ignore: must_be_immutable
class Login extends StatefulWidget {

  
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String _erro = '';
  bool logado = true;
  
  late GoogleSignInAccount userObj;
  GoogleSignIn _googleSignIn = GoogleSignIn();

    
   @override
    void initState()   {
      
      super.initState();
      
    }
  Widget build(BuildContext context) {

    final loginGoogleButton = ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        onPrimary: Colors.black,
        minimumSize: Size(double.infinity, 50),
      ),
      icon: FaIcon(FontAwesomeIcons.google, color: Colors.red,),
      label: Text("Entrar com Google"),
      onPressed: () async {
          await _googleSignIn.signIn().then((userData){
          
          setState(() {
            logado = true;
            userObj = userData!;
            
          });

          }).catchError((e){
            print(e);
          });
          if (logado){

            Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: Home(user: userObj)));

          }
          
        },
      
      );

      final loginfacebookButton = ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        onPrimary: Colors.black,
        minimumSize: Size(double.infinity, 50),
      ),
      icon: FaIcon(FontAwesomeIcons.facebook, color: Colors.blue[900],),
      label: Text("(não disponivel)"),
      onPressed: (){
   
          
        },
      
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
                      Padding(padding: EdgeInsets.only(top: 60),
                      child: SizedBox(
                          height: 255.0,
                          child: Image.asset(
                            "images/bitcoins.png",
                            fit: BoxFit.contain,
                          )

                      ),
                      
                      ),
                     
                      
                      SizedBox(height: 55.0),
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
                              
                                SizedBox(height: 25.0),
                          
                                SizedBox(
                                
                                  width: MediaQuery.of(context).size.width/2,
                                  child: loginGoogleButton,
                                ),
                                                                SizedBox(height: 25.0),
                          
                                SizedBox(
                                
                                  width: MediaQuery.of(context).size.width/2,
                                  child: loginfacebookButton,
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
