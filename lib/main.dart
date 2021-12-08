import 'dart:html';
import 'dart:ui';
import 'recipe.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(RecipeApp());
}

class RecipeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 2
    final ThemeData theme = ThemeData();
    // 3
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // 4
      title: 'Recipe Calculator',
      // 5
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.grey,
          secondary: Colors.black,
        ),
      ),
      // 6
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // 1
    return Scaffold(
      // 2
      appBar: AppBar(
        centerTitle: true,
        title: Text('Recipe Calculator'),
      ),
      // 3
      body: SafeArea(
        // 4
        child: Container(
          child: ListView.builder(
            // 5
            itemCount: Recipe.samples.length,
            // 6
            itemBuilder: (BuildContext context, int index) {
              // 7
              // TODO: Add GestureDetector
              return buildRecipeCard(Recipe.samples[index]);
            },
          ),
        ),
      ),
    );
  }

  Widget buildRecipeCard(Recipe recipe) {
    // 1
    return Card(
      // 2
      child: Column(
        // 3
        children: <Widget>[
          // 4
          Image(
            image: AssetImage(recipe.imageUrl),
            width: 200,
            height: 200,
          ),
          // 5
          Text(recipe.label),
        ],
      ),
    );
  }
}
