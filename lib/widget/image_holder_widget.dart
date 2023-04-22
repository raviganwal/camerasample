import 'dart:io';

import 'package:camerasample/core/viewmodel/camera_view_model.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class ImageHolderWidget extends StatelessWidget {
  final XFile? image;

  const ImageHolderWidget({Key? key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cameraViewModel = context.watch<CameraViewModel>();
    return Container(
      width: MediaQuery.of(context).size.width * 0.22,
      height: MediaQuery.of(context).size.width * 0.22,
      color: Colors.white,
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: () {
            cameraViewModel.onImagePressed(key: key!);
          },
          child: image != null
              ? Image.file(
                  File(image!.path),
                  fit: BoxFit.cover,
                )
              : const Icon(
                  Icons.camera_alt,
                  size: 30,
                ),
        ),
      ),
    );
  }
}
