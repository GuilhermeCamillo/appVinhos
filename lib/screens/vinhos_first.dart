import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nacguilherme/screens/curiosidades_tela.dart';
import 'package:nacguilherme/screens/fotos_tela.dart';
import 'package:nacguilherme/screens/marcas_tela.dart';
import 'package:nacguilherme/screens/vinhos_screen.dart';

class VinhosTela extends StatelessWidget {
  const VinhosTela({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final drawerHeader = UserAccountsDrawerHeader(

      accountName: Text('Guilherme Camillo'),
      accountEmail: Text('gui_camillo11@hotmail.com'),
      currentAccountPicture: CircleAvatar(
        child: FlutterLogo(size: 42.0),
        backgroundColor: Colors.black,
      ),
    );
    final drawerItems = ListView(

      children: <Widget>[
        drawerHeader,
        ListTile(
          title: Text('                  VINHOS', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          trailing: Icon(
            Icons.arrow_forward_ios, size: 35,
          ),
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => VinhosScreen())),
        ),
        ListTile(
          title: Text('                  MARCAS', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          trailing: Icon(
            Icons.arrow_forward_ios, size: 35,
          ),
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => MarcasTela())),
        ),
        ListTile(
          title: Text('                  FOTOS', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          trailing: Icon(
            Icons.arrow_forward_ios, size: 35,
          ),
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => FotosTela())),
        ),
        const SizedBox(height: 30),
        RaisedButton(
          color: Color.fromRGBO(94, 33, 41, .9),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          elevation: 12,
          padding: const EdgeInsets.all(5),
          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => CuriosidadesTela())),
          child: const Text('Saiba mais!', style: TextStyle(fontSize: 20)),
        ),
      ],
    );

    return Scaffold(

        appBar: AppBar(
          backgroundColor: Color.fromRGBO(94, 33, 41, .9),
          title: Text('Loja de Vinhos',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
        ),
        body: Stack(children: <Widget>[
          Positioned(
            child: Center(
              child: Image.asset('assets/vinhos.png', width: 400, height: 800, fit: BoxFit.fill),
            ),
          ),
          Stack(children: <Widget>[
            Positioned(
              top: 50,
              left: 50,
              right: 50,
              child: Center(
                child: Text("Do you want to know more about wines and buy some to taste? \n"
                    "\n <-   Let's take a look \n"
                    "\n D"
                    "\n   R "
                    "\n     I "
                    "\n       N "
                    "\n         K \n"
                    "\n           W "
                    "\n         I "
                    "\n       N "
                    "\n     E \n", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w800),),
              ),
            ),

          ],),
        ],),

        drawer: Drawer(
          child: drawerItems,
        )
    );
  }
}

