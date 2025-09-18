class Moto {
  final String id;
  final String modelo;
  final String marca;
  final int ano;
  final double precoDiaria;
  final String imageUrl;
  final bool disponivel;

  const Moto({
  required this.id,
  required this.modelo,
  required this.marca,
  required this.ano,
  required this.precoDiaria,
  required this.imageUrl,
  this.disponivel = true});
}
