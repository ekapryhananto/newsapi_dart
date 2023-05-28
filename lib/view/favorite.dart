import 'package:flutter/material.dart';
import 'package:project_visen/controller/news.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FavoritePage extends StatefulWidget {
  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  List<String> favoriteArticles = [];
  List<String> listFav = [];
  var newsList;

  @override
  void initState() {
    super.initState();
    _loadFavorites();
    _getFavList();
  }

  Future<void> _loadFavorites() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? favorites = prefs.getStringList("favorite");
    if (favorites != null) {
      setState(() {
        favoriteArticles = favorites;
      });
    }
    // News news = News();
    // await news.getNews();
    // newsList = news.news;
    //   for (int j = 0; j < favoriteArticles.length; j++) {
    //
    //   }
  }

  void _getFavList() async {
    NewsFavourite news = NewsFavourite();
    for(int i = 0; i < favoriteArticles.length; i++) {
      await news.getNewsFavourite(favoriteArticles[i]);
      newsList = news.news;
      listFav.add(newsList);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite News'),
      ),
      body: ListView.builder(
        itemCount: listFav.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            child: Container(
              child: Column(
                children: [
                  Text(listFav[index])
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
