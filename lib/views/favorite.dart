// ignore_for_file: unnecessary_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:vehicules/views/pages/detailsScreen.dart';
import 'package:vehicules/widgets/vehicules_favorite/vehicules_favorite_widgets.dart';
import 'package:vehicules/widgets/vehicules_favorite_data.dart';
import 'package:vehicules/widgets/vehicules_widgets/product.dart';

class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  late final VoidCallback onDeletePressed;
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey = GlobalKey();

  void toggleFavorite(Product product) {
    setState(() {
      if (favoriteProducts.contains(product)) {
        favoriteProducts.remove(product);
      } else {
        favoriteProducts.add(product);
      }
    });
  }

  Future<void> _refresh() async {
    await Future.delayed(const Duration(seconds: 1));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      key: _refreshIndicatorKey,
      onRefresh: _refresh,
      color: Colors.blue,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text(
            'Favorites',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: ListView.builder(
            itemCount: favoriteProducts.length,
            itemBuilder: (context, index) {
              final product = favoriteProducts[index];
              return Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: VehiculesFavorite(
                  product: product,
                  press: () {
                    Get.to(DetailsScreen(product: product));
                  },
                  onFavoritePressed: () {
                    toggleFavorite(product);
                  },
                  onDeletePressed: () {
                    toggleFavorite(product);
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
