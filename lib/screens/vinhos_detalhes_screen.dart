import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nacguilherme/models/vinhos_model.dart';
import 'package:url_launcher/url_launcher.dart';

class VinhosDetalhesScreen extends StatelessWidget {
  VinhoModel vinhoModel;

  @override
  Widget build(BuildContext context) {
    vinhoModel = ModalRoute.of(context).settings.arguments;

    final levelIndicator = Container(
      child: Container(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: LinearProgressIndicator(
            backgroundColor: Color.fromRGBO(209, 224, 224, 0.2),
            value: vinhoModel.percentualConclusao,
            valueColor: AlwaysStoppedAnimation(Colors.green),
          ),
        ),
      ),
    );

    /*final coursePrice = Container(
      padding: const EdgeInsets.all(7.0),
      decoration: new BoxDecoration(
        border: new Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Center(
        child: new Text(
          "R\$ " + vinhoModel.preco.toString(),
          style: TextStyle(color: Colors.white),
        ),
      ),
    );*/

    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 175.0,),
        Icon(
          Icons.local_drink,
          color: Colors.white,
          size: 40.0,
        ),
        Container(
          padding: EdgeInsets.only(left: 0.1),
          width: 90.0,
          alignment: Alignment.centerLeft,
          child: new Divider(color: Colors.blueAccent),
        ),
        SizedBox(height: 10.0),
        Text(
          vinhoModel.nome,
          textAlign: TextAlign.left,
          style: TextStyle(
            color: Colors.white,
            fontSize: 60.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 22.7),
      ],
    );

    final topContent = Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 10.0),
          height: MediaQuery.of(context).size.height * 0.5,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.5,
          padding: EdgeInsets.all(40.0),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("assets/" + vinhoModel.imagem),
              fit: BoxFit.fitHeight
            )
          ),
          child: Center(
            child: topContentText,
          ),
        ),
        Positioned(
          left: 8.0,
          top: 60.0,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        )
      ],
    );

    final bottomContentText = Text(
      vinhoModel.conteudo,
      style: TextStyle(fontSize: 18.0),
      textAlign: TextAlign.justify,
    );

    final readButton = Container(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      width: MediaQuery.of(context).size.width,
      child: RaisedButton(
        onPressed: () => launch(vinhoModel.url),
        color: Color.fromRGBO(94, 33, 41, .9),
        child: Text(
          "Ver mais!",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800),
        ),
      ),
    );

    final bottomContent = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(40.0),
      child: Center(
        child: Column(
          children: <Widget>[
            bottomContentText,
            readButton,
          ],
        ),
      ),
    );

    return Scaffold(
      body: Column(
        children: <Widget>[
          topContent,
          bottomContent,
        ],
      ),
    );
  }
}
