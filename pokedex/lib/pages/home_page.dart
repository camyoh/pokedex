import 'package:flutter/material.dart';
import 'package:pokedex/components/background_color.dart';
import 'package:pokedex/components/pokemon_image.dart';
import 'package:pokedex/models/pokemon_types.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _gradient = Background();
  final _pokemons = [
    Pokemon('uno', 001, PokemonType.bug,
        'cdn.bulbagarden.net/upload/5/5d/010Caterpie.png'),
    Pokemon('dos', 002, PokemonType.dark,
        'cdn.bulbagarden.net/upload/3/3d/197Umbreon.png'),
    Pokemon('tres', 003, PokemonType.dragon,
        'cdn.bulbagarden.net/upload/c/cc/147Dratini.png'),
    Pokemon('cuatro', 004, PokemonType.electr,
        'cdn.bulbagarden.net/upload/e/e3/145Zapdos.png'),
    Pokemon('cinco', 005, PokemonType.fairy,
        'cdn.bulbagarden.net/upload/f/f4/035Clefairy.png'),
    Pokemon('seis', 006, PokemonType.fight,
        'cdn.bulbagarden.net/upload/4/41/056Mankey.png'),
    Pokemon('siete', 007, PokemonType.fire,
        'cdn.bulbagarden.net/upload/b/b8/059Arcanine.png'),
    Pokemon('ocho', 008, PokemonType.flying,
        'cdn.bulbagarden.net/upload/f/f8/083Farfetch%27d.png'),
    Pokemon('nueve', 009, PokemonType.ghost,
        'cdn.bulbagarden.net/upload/c/ca/092Gastly.png'),
    Pokemon('diez', 010, PokemonType.grass,
        'cdn.bulbagarden.net/upload/a/af/102Exeggcute.png'),
    Pokemon('once', 011, PokemonType.ground,
        'cdn.bulbagarden.net/upload/9/98/105Marowak.png'),
    Pokemon('doce', 012, PokemonType.ice,
        'cdn.bulbagarden.net/upload/a/ab/131Lapras.png'),
    Pokemon('trece', 013, PokemonType.normal,
        'cdn.bulbagarden.net/upload/3/36/132Ditto.png'),
    Pokemon('catorce', 014, PokemonType.poison,
        'cdn.bulbagarden.net/upload/a/ad/317Swalot.png'),
    Pokemon('quince', 015, PokemonType.psychc,
        'cdn.bulbagarden.net/upload/6/60/494Victini.png'),
    Pokemon('dieciseis', 016, PokemonType.rock,
        'cdn.bulbagarden.net/upload/a/a3/566Archen.png'),
    Pokemon('diecisiete', 017, PokemonType.steel,
        'cdn.bulbagarden.net/upload/a/ad/681Aegislash.png'),
    Pokemon('diecisiete', 017, PokemonType.water,
        'cdn.bulbagarden.net/upload/d/d9/847Barraskewda.png'),
  ];
  var index = 0;

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;

    Widget _pokemonImage(String urlImage) {
      return Positioned(
        top: _screenSize.height * 0.1,
        child: PokemonImage(
          urlImage: urlImage,
        ),
      );
    }

    return Scaffold(
      body: Center(
        child: Container(
          width: _screenSize.width,
          height: _screenSize.height,
          decoration: _gradient.color(_pokemons[index].type),
          child: SafeArea(
            child: Stack(
              children: <Widget>[
                _pokemonImage(_pokemons[index].urlImage),
                Positioned(
                    child: BackButton(
                  color: Colors.white,
                  onPressed: () {
                    index++;
                    if (index >= 17) index = 0;
                    setState(() {});
                  },
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
