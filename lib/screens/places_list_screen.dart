import 'package:flutter/material.dart';
import 'package:greate_places_app/providers/great_places.dart';
import 'package:greate_places_app/screens/add_place_screen.dart';
import 'package:provider/provider.dart';

class PlacesListScreen extends StatelessWidget {
  const PlacesListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Places"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AddPlaceScreen.routeName);
              },
              icon: const Icon(Icons.add))
        ],
      ),
      body: Consumer<GreatPlaces>(
        child: const Center(
          child: Text(
            'get no places yet, start adding some!',
          ),
        ),
        builder: (context, greatPlace, ch) {
          return greatPlace.items.isEmpty
              ? ch!
              : ListView.builder(
                  itemBuilder: (ctx, i) => ListTile(
                    leading: CircleAvatar(
                      backgroundImage: FileImage(greatPlace.items[i].image!),
                    ),
                    title: Text(greatPlace.items[i].title!),
                    onTap: () {
                      // go to Detail page....
                    },
                  ),
                  itemCount: greatPlace.items.length,
                );
        },
      ),
    );
  }
}
