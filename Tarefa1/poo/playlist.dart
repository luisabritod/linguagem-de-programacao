import 'musica.dart';

class Playlist {
  String nome;
  List<Musica> musicas = [];

  Playlist({required this.nome});

  void adicionarMusica(Musica musica) {
    musicas.add(musica);
  }

  void mostrarDetalhes() {
    print("Playlist: $nome");
    for (var musica in musicas) {
      print(musica.toString());
    }
  }
}
