import 'package:flutter/material.dart';

class FotosTela extends StatefulWidget {
  final title = 'Fotos';

  @override
  State<StatefulWidget> createState(){
    return FotosTelaState();
  }
}

class FotosTelaState extends State<FotosTela>{
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
          children: _buildGrid(14),
        )
    );
  }
}

List<Widget> _buildGrid(number){
  List<Container> containers = new List<Container>.generate(number,
          (int index){
        final imageName= index<9?
        'assets/fotos/image0${index+1}.jpg': 'assets/fotos/image${index+1}.jpg';

        return new Container(
          child: new Image.asset(imageName,
              fit: BoxFit.cover),
        );
      }
  );
  return containers;
}

class FotosVinhos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
        title: 'Vinhos App',
        home: new FotosTela()
    );
  }
}