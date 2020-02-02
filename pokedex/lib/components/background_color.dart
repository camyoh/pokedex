import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon_types.dart';
import 'package:pokedex/utils/background_colors.dart';

class Background {
  BoxDecoration color(PokemonType pokemon) {
    switch (pokemon) {
      case PokemonType.bug:
        return _gradient(PokedexColors.bug);
        break;
      case PokemonType.dark:
        return _gradient(PokedexColors.dark);
        break;
      case PokemonType.dragon:
        return _gradient(PokedexColors.dragon);
        break;
      case PokemonType.electr:
        return _gradient(PokedexColors.electr);
        break;
      case PokemonType.fairy:
        return _gradient(PokedexColors.fairy);
        break;
      case PokemonType.fight:
        return _gradient(PokedexColors.fight);
        break;
      case PokemonType.fire:
        return _gradient(PokedexColors.fire);
        break;
      case PokemonType.flying:
        return _gradient(PokedexColors.flying);
        break;
      case PokemonType.ghost:
        return _gradient(PokedexColors.ghost);
        break;
      case PokemonType.grass:
        return _gradient(PokedexColors.grass);
        break;
      case PokemonType.ground:
        return _gradient(PokedexColors.ground);
        break;
      case PokemonType.ice:
        return _gradient(PokedexColors.ice);
        break;
      case PokemonType.normal:
        return _gradient(PokedexColors.normal);
        break;
      case PokemonType.poison:
        return _gradient(PokedexColors.poison);
        break;
      case PokemonType.psychc:
        return _gradient(PokedexColors.psychc);
        break;
      case PokemonType.rock:
        return _gradient(PokedexColors.rock);
        break;
      case PokemonType.steel:
        return _gradient(PokedexColors.steel);
        break;
      case PokemonType.water:
        return _gradient(PokedexColors.water);
        break;
      default:
        return _gradient(PokedexColors.normal);
    }
  }

  BoxDecoration _gradient(List<Color> colors) {
    return BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: colors));
  }
}
