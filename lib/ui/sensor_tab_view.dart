import 'package:camerasample/core/viewmodel/camera_view_model.dart';
import 'package:camerasample/widget/image_holder_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SensorTabView extends StatefulWidget {
  const SensorTabView({Key? key}) : super(key: key);

  @override
  State<SensorTabView> createState() => _SensorTabViewState();
}

class _SensorTabViewState extends State<SensorTabView> {
  @override
  Widget build(BuildContext context) {
    final cameraViewModel = context.watch<CameraViewModel>();
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          const Text(
            "* Mandatory Field",
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Text(
                      "Before",
                      style: GoogleFonts.montserrat(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ImageHolderWidget(
                          key: const Key('before1'),
                          image: cameraViewModel.before1,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        ImageHolderWidget(
                          key: const Key('before2'),
                          image: cameraViewModel.before2,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ImageHolderWidget(
                      key: const Key('before3'),
                      image: cameraViewModel.before3,
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Text(
                      "After",
                      style: GoogleFonts.montserrat(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ImageHolderWidget(
                          key: const Key('after1'),
                          image: cameraViewModel.after1,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        ImageHolderWidget(
                          key: const Key('after2'),
                          image: cameraViewModel.after2,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ImageHolderWidget(
                      key: const Key('after3'),
                      image: cameraViewModel.after3,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
