import 'package:flutter/material.dart';
import 'package:vehicules/widgets/vehicules_widgets/product.dart';

class VehiculesFavorite extends StatelessWidget {
  const VehiculesFavorite({
    Key? key,
    required this.product,
    required this.press,
    required this.onFavoritePressed,
    required this.onDeletePressed,
  }) : super(key: key);

  final Product product;
  final GestureTapCallback press;
  final VoidCallback onFavoritePressed;
  final VoidCallback onDeletePressed;

  void handleDelete() {
    onDeletePressed();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue.withOpacity(0.05),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            PopupMenuButton(
              color: Colors.white,
              icon: const Icon(Icons.more_vert),
              itemBuilder: (BuildContext context) => [
                PopupMenuItem(
                  height: 15,
                  onTap: handleDelete,
                  child: const Center(child: Text("Delete")),
                ),
              ],
            ),
            Row(
              children: [
                Image.asset(
                  product.image,
                  width: 120,
                  height: 80,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            product.logo,
                            width: 25,
                            height: 25,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Text(product.rate)
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12, width: 1.2)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(product.description),
                Text(
                  'Ar ${product.price.toString()}',
                  style: const TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
