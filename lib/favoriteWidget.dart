import 'package:flutter/material.dart';

///  Va gerer les Widget
class FavoriteWidget extends StatefulWidget {
  final bool isFavorited;
  final int favoriteCount;

  const FavoriteWidget(
      {Key? key, required this.isFavorited, required this.favoriteCount})
      : super(key: key);
// On lui dit que l'on va creer un etat
  @override
  _FavoriteWidgetState createState() =>
      _FavoriteWidgetState(this.isFavorited, this.favoriteCount);
}

// Puis on creer l'Etat en question
// Cette va gerer l'Etat du wiget FavoriteWidget ie ses données
class _FavoriteWidgetState extends State<FavoriteWidget> {
  // Pour verifier si la recette est déjà favorite ou pas
  bool _isFavorited;
  int _favoriteCount;
  _FavoriteWidgetState(this._isFavorited, this._favoriteCount);
  void _toggleFavorite() {
    setState(() {
      if (!_isFavorited) {
        _favoriteCount++;
        _isFavorited = true;
      } else {
        _favoriteCount--;
        _isFavorited = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      // On donne une icon comme deuxieme colonne de notre ligne et cet icon est un boutton pour qu'on puisse cliquer dessus
      IconButton(
          icon:
              _isFavorited ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
          color: Colors.red,
          iconSize: 30,
          tooltip: 'Ajouter à vos favories',
          onPressed: _toggleFavorite),
      Text("$_favoriteCount", style: TextStyle(fontSize: 25))
    ]);
  }
}
