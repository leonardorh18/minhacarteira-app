import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fluttertoast/fluttertoast.dart';



  class Loading {


erroDialog(String erro, context) {
showDialog(
        context: context,
        builder: (BuildContext context){
            return AlertDialog(
              title: Text("Aviso"),
              content: Container(
                height: 130,
                child: SingleChildScrollView(child: Column(
                  children: <Widget>[
                    Text(erro),
                    
                  
                  ],
                  )
                ),
              ),
                    
                actions:[
                FlatButton(
                  child: Text("Fechar"),
                   onPressed: (){
                  Navigator.of(context).pop();
                     },
                ),
               
              ],
            );
        }
    );
  

}
  void toastError(String erro) {
     
          Fluttertoast.showToast(
          msg: erro,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.TOP,
          timeInSecForIos: 7,
          fontSize: 20,
          backgroundColor: Colors.blueAccent[200],
          textColor: Colors.black);
      
      }
  
      loadingClose(context){
        Navigator.of(context).pop();
      }

    
      loading(context) {
     
         showDialog(
                  context: context,
                  builder: (BuildContext context){
                      return SpinKitDualRing(color: Colors.red[800]);
                  }
              );
      
      }





}