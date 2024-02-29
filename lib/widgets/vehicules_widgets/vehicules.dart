import 'package:flutter/material.dart';
import 'package:vehicules/widgets/vehicules_favorite_data.dart';
import 'package:vehicules/widgets/vehicules_widgets/product.dart';

class Vehicules extends StatefulWidget {
  const Vehicules({
    super.key,
    required this.product,
    required this.press,
    required this.onFavoritePressed,
  });
  final Product product;
  final GestureTapCallback press;
  final VoidCallback onFavoritePressed;

  @override
  State<Vehicules> createState() => _VehiculesState();
}

class _VehiculesState extends State<Vehicules> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GestureDetector(
        onTap: widget.press,
        child: Container(
          width: MediaQuery.of(context).size.width / 1.3,
          height: MediaQuery.of(context).size.height / 2.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.blue.withOpacity(0.08),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Container(
              padding: const EdgeInsets.all(2),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        widget.product.logo,
                        width: 30,
                        height: 25,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            if (favoriteProducts.contains(widget.product)) {
                              favoriteProducts.remove(widget.product);
                            } else {
                              favoriteProducts.add(widget.product);
                            }
                          });
                        },
                        child: favoriteProducts.contains(widget.product)
                            ? const Icon(Icons.favorite, color: Colors.red)
                            : const Icon(Icons.favorite_border),
                      )
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 5,
                    width: MediaQuery.of(context).size.width,
                    child: AspectRatio(
                      aspectRatio: 1.02,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            widget.product.image,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            widget.product.title,
                            style: const TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w600),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Text(widget.product.rate)
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12, width: 1.2)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.product.description,
                        style: const TextStyle(
                            color: Colors.black45, fontSize: 10),
                      ),
                      Text(
                        "Ar ${widget.product.price}",
                        style: const TextStyle(
                            color: Colors.blue,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
