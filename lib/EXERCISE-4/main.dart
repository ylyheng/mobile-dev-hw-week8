import 'package:flutter/material.dart';

import 'jokes.dart';

void main() {
  runApp(const FavoriteJokesApp());
}

class FavoriteJokesApp extends StatefulWidget {
  const FavoriteJokesApp({super.key});

  @override
  State<FavoriteJokesApp> createState() => _FavoriteJokesAppState();
}

class _FavoriteJokesAppState extends State<FavoriteJokesApp> {
  int? _favoriteJokeIndex;

  void _toggleFavorite(int index) {
    setState(() {
      if (_favoriteJokeIndex == index) {
        _favoriteJokeIndex = null;
      } else {
        _favoriteJokeIndex = index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.green.shade300,
          title: const Text("Favorite Jokes"),
        ),
        body: ListView(
          children: [
            for (int index = 0; index < jokes.length; index++)
              FavoriteCard(
                joke: jokes[index],
                isFavorite: _favoriteJokeIndex == index,
                onFavoriteClick: () {
                  _toggleFavorite(index);
                },
              ),
          ],
        ),
      ),
    );
  }
}

class FavoriteCard extends StatelessWidget {
  const FavoriteCard({
    super.key,
    required this.joke,
    required this.isFavorite,
    required this.onFavoriteClick,
  });

  final Joke joke;
  final bool isFavorite;
  final VoidCallback onFavoriteClick;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(width: .5, color: Colors.grey)),
      ),
      padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  joke.title,
                  style: TextStyle(
                    color: Colors.green.shade700,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 10),
                Text(joke.description),
              ],
            ),
          ),
          IconButton(
            onPressed: onFavoriteClick,
            icon: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              color: isFavorite ? Colors.red : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
