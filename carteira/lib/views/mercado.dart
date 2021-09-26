
import 'package:carteira/views/controller.dart';
import 'package:carteira/views/loading.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

class Mercado extends StatefulWidget {
  





  @override
  _MercadoState createState() => _MercadoState();
}
class _MercadoState extends State<Mercado> {
  double preco = 0.0;
  Loading load = Loading();
  var moeda = TextEditingController(text: 'BRL');
  Controller controller = new Controller();
  
  var crypto = TextEditingController();

  Future<void> reqp(String crypto, String moeda) async {

  if (moeda.trim().isEmpty){

    setState(() {
      moeda = 'BRL';
      this.moeda.text = 'BRL';

    });
    
  }
  // url coin 'https://api.coingecko.com/api/v3/coins/bitcoin?localization=false&tickers=false&market_data=true&community_data=false&developer_data=false&sparkline=false'
  var url = Uri.parse('https://api.coingecko.com/api/v3/coins/'+crypto.toLowerCase()+'?localization=false&tickers=false&market_data=true&community_data=false&developer_data=false&sparkline=false');
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var jsonResponse = convert.jsonDecode(response.body);
    
     controller.changePrice(jsonResponse['market_data']['current_price'][moeda.toLowerCase()].toDouble());
    
    
  } else {
    
    controller.changePrice(0);
  }
  
}
  @override

  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child:Center(
                      child: Text('Qual crypto você quer?', 
                      style: TextStyle(
                        color: Colors.blueAccent, fontSize: 23, fontWeight: FontWeight.bold),
                      )
                    ) ,
              ),
                Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child:Center(
                      child: Text('*digite o nome da cryptomoeda abaixo*', 
                      style: TextStyle(
                        color: Colors.redAccent, fontSize: 15, fontWeight: FontWeight.bold),
                      )
                    ) ,
              ),

                Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child:Container( 
                    width: MediaQuery.of(context).size.width / 2 ,
                    child:TextField(
                      controller: crypto,
                    obscureText: false,
                    maxLength: 100,
                    decoration: InputDecoration(
                      
                      filled: true,
                      fillColor: Colors.white,
                        labelText: "Crypto",
                        contentPadding: EdgeInsets.fromLTRB(5.0, 15.0, 20.0, 0),
                        hintText: "Nome" ,
                        border:
                        OutlineInputBorder(borderRadius: BorderRadius.horizontal()),
                        

                    ),
                 ),
                ), 
              ),
               Padding(
                padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                child:Center(
                      child: Text('Moeda', 
                      style: TextStyle(
                        color: Colors.blueAccent, fontSize: 23, fontWeight: FontWeight.bold),
                      )
                    ) ,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child:Center(
                      child: Text('*moeda padrão é BRL*', 
                      style: TextStyle(
                        color: Colors.redAccent, fontSize: 15, fontWeight: FontWeight.bold),
                      )
                    ) ,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child:Container( 
                    width: MediaQuery.of(context).size.width / 2 ,
                    child:TextField(
                    controller: moeda,
                    obscureText: false,
                    maxLength: 100,
                    decoration: InputDecoration(
                      
                      filled: true,
                      fillColor: Colors.white,
                        labelText: "Moeda",
                        contentPadding: EdgeInsets.fromLTRB(5.0, 15.0, 20.0, 10.0),
                        hintText: "Nome ex: brl, usd..." ,
                        border:
                        OutlineInputBorder(borderRadius: BorderRadius.horizontal()),
                        

                    ),
                 ),
                ), 
              ),

              Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.greenAccent[700],
                    child: MaterialButton(
                      minWidth: MediaQuery.of(context).size.width/2,
                      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      onPressed: () async{
                        load.loading(context);
                        await reqp(crypto.text, moeda.text);
                        load.loadingClose(context);
                      },
                      child: Text("Procurar",
                          textAlign: TextAlign.center,

                    ),
                    ),
                ),
              
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Center(
                child: Text(moeda.text.toUpperCase()+": "+controller.price.toString(), style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                )
              )

        ]
      ),
    );
  }
}