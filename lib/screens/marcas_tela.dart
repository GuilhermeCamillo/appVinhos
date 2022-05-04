import 'package:flutter/material.dart';

class MarcasTela extends StatefulWidget {
    final title = 'Marcas Famosas';

    @override
    State<StatefulWidget> createState(){
      return MarcasTelaState();
    }
}

class MarcasTelaState extends State<MarcasTela>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new GridView.extent(maxCrossAxisExtent: 200.0,
        mainAxisSpacing: 5.0,
        crossAxisSpacing: 5.0,
        padding: const EdgeInsets.all(5.0),
        children: _buildGrid(10),
      )
    );
  }
}

List<Widget> _buildGrid(number){
  List<Container> containers = new List<Container>.generate(
      number,
      (int index){
      final imageName= index<9?
        'assets/marcas/image0${index+1}.jpg': 'assets/marcas/image${index+1}.jpg';
      return new Container(
          child: new Image.asset(imageName,
          fit: BoxFit.cover),
        );
      }
   );
  return containers;
}

class FotosMarcas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      title: 'Vinhos App',
      home: new MarcasTela()
    );
  }
}

