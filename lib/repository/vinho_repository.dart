import 'package:nacguilherme/models/vinhos_model.dart';

import 'package:nacguilherme/repository/database.dart';

class VinhoRepository {


  Future<List<VinhoModel>> findAllAsync() async {
    var db = Database();
    await db.createDatabase();

    List<VinhoModel> vinhos = new List<VinhoModel>();

    if (db.created) {
      vinhos = new List<VinhoModel>();
      vinhos.add(
        new VinhoModel(
          id: 1,
          nome: 'Branco',
          nivel: 'Básico',
          percentualConclusao: 0.7,
          preco: 599,
          conteudo:
          'O vinho branco é um vinho com coloração variando do mais pálido amarelo-esverdeado até o mais profundo dourado-âmbar. Ele é produzido não se permitindo que a casca das uvas fermente junto com o vinho, pois é a casca das uvas que confere a cor escura dos vinhos tintos. Os vinhos brancos são reconhecidos como bebidas leves e frescas em taça.',
          url: 'https://www.grandcru.com.br/vinho-branco/category/branco',
          imagem: 'vinho-branco.jpg',
          fundo: 'logo-branco.png'
        ),
      );
      vinhos.add(
        VinhoModel(
          id: 2,
          nome: 'Rosé',
          nivel: 'Básico',
          percentualConclusao: 0.25,
          preco: 399,
          conteudo:
          'O vinho rosé ou rosado é um tipo de vinho que apresenta coloração rosada, intermediária entre os tintos e os brancos. Esta cor pode variar de um laranja pálido a um púrpura vívido, dependendo das uvas utilizadas e técnicas de fermentação.',
          url: 'https://www.grandcru.com.br/vinho-rose/category/rose',
          imagem: 'vinhos-rose.jpg',
          fundo: 'logo-tinto.jpg'
        ),
      );
      vinhos.add(
        VinhoModel(
          id: 3,
          nome: 'Tinto',
          nivel: 'Básico',
          percentualConclusao: 0.9,
          preco: 799,
          conteudo:
          'Vinho tinto é a bebida resultante da fermentação do suco ou mosto extraído de uvas pretas ou tintas no qual é imperativo que haja maceração das cascas no mosto com a finalidade de se atribuir cor e sabor à bebida. mbora presentes em praticamente todo o mundo: desde a França, Itália e Espanha, no Velho Mundo, até Argentina, Chile, Estados Unidos e Austrália, no Novo Mundo.',
          url: 'https://www.grandcru.com.br/vinho-tinto/category/tinto',
          imagem: 'vinho-tinto.jpg',
          fundo: 'logos.png'
        ),
      );
      vinhos.add(
        VinhoModel(
          id: 3,
          nome: 'Espumante',
          nivel: 'Básico',
          percentualConclusao: 0.9,
          preco: 799,
          conteudo:
          'Espumante também é um vinho, mas com borbulhas. São essas borbulhas que fazem toda a diferença na hora de beber um espumante, e essa característica é resultado de uma segunda fermentação que o vinho passa. Nem todo espumante é um Champagne, pois somente os vinhos produzidos nesta região da França podem receber esta denominação.',
           url: 'https://www.grandcru.com.br/espumante/category/espumante',
           imagem: 'vinho-espumante.jpg',
           fundo: 'logo-espumante.png'
        ),
      );
      vinhos.add(
        VinhoModel(
          id: 3,
          nome: 'Doce',
          nivel: 'Básico',
          percentualConclusao: 0.9,
          preco: 799,
          conteudo:
          'Os vinhos de sobremesa são vinhos com alto teor de açúcar proveniente das próprias uvas que passam por um processo tardio de colheita ou ressecamento acelerado por agentes biológicos, conhecido como podridão nobre. Os principais vinhos de sobremesa do mundo - Sauternes, da região de Bordeaux, na França, e Tokaji, na Hungria - são muito famosos desde a Idade Média.',
            url: 'https://www.grandcru.com.br/vinho-sobremesa/category/sobremesa',
            imagem: 'vinho-doce.jpg',
            fundo: 'logo-doce.png'
        ),
      );
    }

    return new Future.value(vinhos);
  }

}
