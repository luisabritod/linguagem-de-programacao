class Musica {
  String titulo;
  String artista;
  String duracao;

  Musica(this.titulo, this.artista, this.duracao);

  @override
  String toString() {
    return "$titulo de $artista - Duração: $duracao";
  }
}
