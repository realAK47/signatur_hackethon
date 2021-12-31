import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class PlantCamScreen extends StatefulWidget {
  static String id = "PlantCamScreen";
  PlantCamScreen({required this.cameras});
  final List<CameraDescription> cameras;

  @override
  _PlantCamScreenState createState() => _PlantCamScreenState();
}

class _PlantCamScreenState extends State<PlantCamScreen> {
  late CameraController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = CameraController(widget.cameras[0], ResolutionPreset.high);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return Container(
        color: Colors.blueAccent,
      );
    } else {
      return AspectRatio(
        aspectRatio: controller.value.aspectRatio,
        child: CameraPreview(controller),
      );
    }
  }
}
