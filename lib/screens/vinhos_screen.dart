import 'package:flutter/material.dart';
import 'package:nacguilherme/models/vinhos_model.dart';
import 'package:nacguilherme/repository/vinho_repository.dart';
import 'package:nacguilherme/screens/vinhos_first.dart';

class VinhosScreen extends StatefulWidget {
  @override
  _VinhosScreenState createState() => _VinhosScreenState();
}

class _VinhosScreenState extends State<VinhosScreen> {
  VinhoModel vinhoModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(94, 33, 41, .9),
        title: Text("Vinhos", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
      ),
      body: FutureBuilder<List<VinhoModel>>(
        future: VinhoRepository().findAllAsync(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return buildListView(snapshot.data);
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  ListView buildListView(List<VinhoModel> vinhos) {
    return ListView.builder(
      itemCount: vinhos == null ? 0 : vinhos.length,
      itemBuilder: (BuildContext ctx, int index) {
        return cardVinho(vinhos[index]);
      },
    );
  }

  Card cardVinho(VinhoModel vinho) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 12.0,
      margin: new EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 6.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(94, 33, 41, .9),
        ),
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 40.0,
          ),
          leading: Container(
            width: 60,
            height: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/'+vinho.fundo),
                fit: BoxFit.fill
              )
            ),
          ),
          title: Text(
            vinho.nome,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30
            ),
          ),
          trailing: Icon(
            Icons.keyboard_arrow_right,
            color: Colors.white,
            size: 30.0,
          ),
          onTap: () {

            Navigator.pushNamed(
              context,
              "/vinhos_detalhes",
              arguments: vinho,
            );

          },
        ),
      ),
    );
  }
}
