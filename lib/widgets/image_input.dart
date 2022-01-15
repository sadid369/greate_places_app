import 'dart:io';

import 'package:flutter/material.dart';

class ImageInput extends StatefulWidget {
  ImageInput({Key? key}) : super(key: key);

  @override
  _ImageInputState createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {
  File? _storedImage;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 100,
          width: 150,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.grey),
          ),
          alignment: Alignment.center,
          child: _storedImage != null
              ? Image.file(
                  _storedImage!,
                  fit: BoxFit.cover,
                  width: double.infinity,
                )
              : const Text('No Image Taken'),
        ),
        const SizedBox(
          width: 10,
        ),
        TextButton.icon(
            style: ButtonStyle(
              textStyle: MaterialStateProperty.all<TextStyle>(
                  TextStyle(color: Theme.of(context).colorScheme.primary)),
            ),
            onPressed: () {},
            icon: const Icon(Icons.camera),
            label: const Text('Take a Picture'))
      ],
    );
  }
}
