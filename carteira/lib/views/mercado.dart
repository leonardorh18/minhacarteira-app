import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

class Mercado extends StatefulWidget {
  





  @override
  _MercadoState createState() => _MercadoState();
}
class _MercadoState extends State<Mercado> {
  int preco = 0;
  Future<void> reqp() async {
  // This example uses the Google Books API to search for books about http.
  // https://developers.google.com/books/docs/overview
  var url = Uri.parse('https://api.coingecko.com/api/v3/coins/bitcoin?localization=false&tickers=false&market_data=true&community_data=false&developer_data=false&sparkline=false');
  
  // Await the http get response, then decode the json-formatted response.
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var jsonResponse = convert.jsonDecode(response.body);
    setState(() {
      preco = jsonResponse['market_data']['current_price']['brl'];
    });
    
  } else {
    setState(() {
      preco = 8;
    });
  }
  
}
  @override

  
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
                  GestureDetector(
                 child: Text("Atualizar", 
                        style: TextStyle(color: Colors.blue, fontSize: 20),
                  ),
                  onTap: reqp,
                  ),
            Text(' '+ preco.toString()),
        ],
      ),
    );
  }
}