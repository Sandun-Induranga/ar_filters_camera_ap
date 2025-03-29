import 'package:deepar_flutter/deepar_flutter.dart';
import 'package:flutter/material.dart';

class ARFilterCamera extends StatefulWidget {
  const ARFilterCamera({super.key});

  @override
  State<ARFilterCamera> createState() => _ARFilterCameraState();
}

class _ARFilterCameraState extends State<ARFilterCamera> {
  final  DeepArController _controller = DeepArController();

  @override
  void initState() {
    _controller.initialize(
        androidLicenseKey:"---android key---",
        iosLicenseKey:"---iOS key---",
        resolution: Resolution.high);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _controller.isInitialized
              ? DeepArPreview(
            _controller,
                )
              : const Center(
            child: CircularProgressIndicator(),
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
