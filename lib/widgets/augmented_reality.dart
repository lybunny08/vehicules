import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:vehicules/widgets/vehicules_widgets/product.dart';

class AugmentedReality extends StatelessWidget {
  final Product product;

  const AugmentedReality({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<PermissionStatus>(
      future: Permission.camera.request(),
      builder:
          (BuildContext context, AsyncSnapshot<PermissionStatus> snapshot) {
        if (snapshot.hasData) {
          if (snapshot.data == PermissionStatus.granted) {
            return Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.white,
              child: ModelViewer(
                backgroundColor: const Color.fromARGB(0xFF, 0xEE, 0xEE, 0xEE),
                src: product.object3d,
                ar: true,
                disableZoom: false,
              ),
            );
          } else {
            return const Center(
              child: Text("Acces camera for AR"),
            );
          }
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
