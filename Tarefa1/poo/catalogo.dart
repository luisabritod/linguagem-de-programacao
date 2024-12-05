import 'musica.dart';

class Catalogo {
  List<Musica> musicas = [];

  void adicionarMusica(Musica musica) {
    musicas.add(musica);
  }

  void listarMusicas() {
    for (var musica in musicas) {
      print(musica.toString());
    }
  }
}
