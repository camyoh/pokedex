enum PokemonType {
  bug,
  dark,
  dragon,
  electr,
  fairy,
  fight,
  fire,
  flying,
  ghost,
  grass,
  ground,
  ice,
  normal,
  poison,
  psychc,
  rock,
  steel,
  water
}

class Pokemon {
  String name;
  int number;
  PokemonType type;
  String urlImage;

  Pokemon(this.name, this.number, this.type, this.urlImage);
}
