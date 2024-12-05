import 'catalogo.dart';
import 'musica.dart';
import 'playlist.dart';

void main() {
  Musica musica1 = Musica("Song One", "Artist A", "3:45");
  Musica musica2 = Musica("Song Two", "Artist B", "4:00");

  Catalogo catalogo = Catalogo();
  catalogo.adicionarMusica(musica1);
  catalogo.adicionarMusica(musica2);

  Playlist minhaPlaylist = Playlist(nome: "Minha Primeira Playlist");
  minhaPlaylist.adicionarMusica(musica1);
  minhaPlaylist.adicionarMusica(musica2);

  print("Músicas no Catálogo:");
  catalogo.listarMusicas();

  print("\nDetalhes da Playlist:");
  minhaPlaylist.mostrarDetalhes();
}
