import 'package:flutter/material.dart';

class CuriosidadesTela extends StatelessWidget {
  const CuriosidadesTela({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _kTabPages = <Widget>[
      Stack(children: <Widget>[
        Positioned(
          top: 50,
          left: 50,
          right: 50,
          child: Center(
            child: Text(
                "     O vinho é uma bebida alcoólica feita pela fermentação do sumo da uva. Para especialistas, a bebida surgiu por acaso, talvez por um pouco de uvas amassadas e esquecidas em um recipiente que, após um tempo, sofreram o efeito da fermentação. "
                    "O vinho possui uma grande importância religiosa e histórica. Um exemplo disso é o grande valor simbólico da bebida no Cristianismo, já que na Santa Ceia o vinho representava o sangue de Cristo. "
                    "A bebida surgiu antes mesmo da escrita, tendo passado por diversas civilizações, como as do Egito e da Grécia."
                    "O vinho possui uma longa história que remonta pelo menos a aproximadamente 6000 a. C., pensando-se que tenha tido origem nos atuais territórios da Geórgia, Turquia ou Irã. "
                    "Crê-se que o seu aparecimento na Europa ocorreu há aproximadamente 6 500 anos, nas atuais Bulgária ou Grécia. Era muito comum na Grécia e Roma antigas. "
                    "O vinho tem desempenhado um papel importante em várias religiões desde tempos antigos. "
                    "O deus grego Dioniso e o deus romano Baco representavam o vinho, e ainda hoje o vinho tem um papel central em cerimônias religiosas cristãs e judaicas como a Eucaristia e o Kidush. ", style: TextStyle(fontSize: 16),textAlign: TextAlign.left
            ),
          ),
        ),
      ],),
      Stack(children: <Widget>[
        Positioned(
          top: 50,
          left: 50,
          right: 50,
          child: Center(
            child: Text(
                "     Além de ser uma bebida agradável, o vinho também é ótimo para a saúde. "
                    "Pesquisas recentes afirmam que beber de um a dois cálices de vinho por dia reduz o risco de doenças cardíacas, causadoras do infarto, além de outras enfermidades. "
                    "Isso se deve ao fato de que no vinho há a presença de polifenóis, que possuem propriedades antioxidantes,"
                    " diminuindo a atuação dos radicais livres que estão ligados a várias doenças, como câncer, estresse, envelhecimento, etc."
                    ""
                    "                                   O cheiro e característica de cada tipo de uva é chamado de “aroma”, o aroma completo de todo o vinho, chama-se “bouquet” e quando os experts querem falar de ambos, usam “nariz”. "
                    "Quando querem ficar bêbados, apenas tomam."
                    "Na Grécia antiga, em ocasiões onde ia-se beber vinho, o anfitrião dava o primeiro gole para provar que aquele não estava envenenado. Daí a expressão “saúde! ”. Em Roma, começou-se a usar a palavra “toasting” (torrada, que até hoje é usado em países de língua inglesa), isso porque eles colocavam um pedaço de torrada para tirar gostos estranhos e acidez do vinho.", style: TextStyle(fontSize: 16),textAlign: TextAlign.left
            ),
          ),
        ),
      ],)
    ];
    final _kTabs = <Tab>[
      Tab(text: 'Sobre'),
      Tab(text: 'Curiosidades'),
    ];
    return DefaultTabController(
      length: _kTabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Curiosidades', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
          backgroundColor: Color.fromRGBO(94, 33, 41, .9),
          bottom: TabBar(
            tabs: _kTabs,
          ),
        ),
        body: TabBarView(
          children: _kTabPages,
        ),
      ),
    );
  }
}
