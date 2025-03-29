import 'package:flutter/material.dart';
import 'package:camera_deep_ar/camera_deep_ar.dart';

class ARFilterCamera extends StatefulWidget {
  const ARFilterCamera({super.key});

  @override
  State<ARFilterCamera> createState() => _ARFilterCameraState();
}

class _ARFilterCameraState extends State<ARFilterCamera> {
  CameraDeepArController? _cameraDeepArController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DeepArPreview(
            _cameraDeepArController!,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Capture Button
                  ElevatedButton(
                    onPressed: () {
                      if (_cameraDeepArController != null) {
                        _cameraDeepArController!.snapPhoto();
                      }
                    },
                    child: Icon(Icons.camera),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
