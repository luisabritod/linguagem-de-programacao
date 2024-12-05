void main() {
  List<Map<String, String>> catalogo = [
    {'titulo': 'Song 1', 'artista': 'Artist 1', 'duracao': '3:45'},
    {'titulo': 'Song 2', 'artista': 'Artist 2', 'duracao': '4:20'},
    {'titulo': 'Song 3', 'artista': 'Artist 3', 'duracao': '5:00'},
  ];

  Map<String, List<Map<String, String>>> playlists = {};

  void listarMusicas() {
    print('Catálogo de músicas:');
    for (var musica in catalogo) {
      print(
          '${musica['titulo']} - ${musica['artista']} (${musica['duracao']})');
    }
  }

  void reproduzirMusica(String titulo) {
    var musica = catalogo.firstWhere(
      (musica) => musica['titulo'] == titulo,
      orElse: () => {},
    );
    print('Reproduzindo: ${musica['titulo']} - ${musica['artista']}');
  }

  void criarPlaylist(String nome) {
    playlists[nome] = [];
    print('Playlist "$nome" criada.');
  }

  void adicionarMusicaPlaylist(String nomePlaylist, String tituloMusica) {
    var musica = catalogo.firstWhere(
      (musica) => musica['titulo'] == tituloMusica,
    );
    if (playlists.containsKey(nomePlaylist)) {
      playlists[nomePlaylist]!.add(musica);
      print(
          'Música "${musica['titulo']}" adicionada à playlist "$nomePlaylist".');
    } else {
      print('Erro ao adicionar música à playlist.');
    }
  }

  // Função para exibir uma playlist
  void exibirPlaylist(String nomePlaylist) {
    if (playlists.containsKey(nomePlaylist)) {
      print('Playlist "$nomePlaylist":');
      for (var musica in playlists[nomePlaylist]!) {
        print(
            '${musica['titulo']} - ${musica['artista']} (${musica['duracao']})');
      }
    } else {
      print('Playlist não encontrada.');
    }
  }

  // Testando o sistema
  listarMusicas();
  reproduzirMusica('Song 2');
  criarPlaylist('Favoritas');
  adicionarMusicaPlaylist('Favoritas', 'Song 1');
  exibirPlaylist('Favoritas');
}
