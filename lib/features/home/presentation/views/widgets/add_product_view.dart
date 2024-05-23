import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:task/core/widgets/custom_button.dart';
import 'package:task/core/widgets/custom_text_field.dart';
import 'package:task/features/home/data/models/product_model.dart';
import 'package:task/features/home/presentation/maneger/product_provider.dart';

class AddProductView extends ConsumerStatefulWidget {
  const AddProductView(this.categoryId, {super.key});
  final int categoryId;
  @override
  ConsumerState<AddProductView> createState() => _AddProductViewState();
}

class _AddProductViewState extends ConsumerState<AddProductView> {
  final nameController = TextEditingController();
  final portionController = TextEditingController();
  final priceController = TextEditingController();
  File? image;
  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;
      final imageTemporary = File(image.path);
      setState(() {
        this.image = imageTemporary;
      });
    } on PlatformException  {
      showErrorDialog("No permeation to pick image");
    }
  }

  void showErrorDialog(String label) {
    showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          title: const Text('Error'),
          content:  Text(label),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(ctx).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  addProduct() {
    if(validate()) {
      final productModel = ProductModel(
          image: Image.file(image!),
          name: nameController.text,
          portion: portionController.text,
          price: double.tryParse(priceController.text)!,
          categoryId: widget.categoryId);
      ref.read(productsProvider.notifier).addProduct(productModel);
      Navigator.of(context).pop();
    }else {

        showErrorDialog("All fields is required");

    }
  }

  validate() {
    return !(nameController.text.isEmpty ||
        image == null ||
        priceController.text.isEmpty ||
        portionController.text.isEmpty);
  }
  @override
  void dispose() {
    nameController.dispose();
    portionController.dispose();
    priceController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final keyboardSpace = MediaQuery.of(context).viewInsets.bottom;

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.fromLTRB(16, 48, 16, keyboardSpace + 30),
        child: Column(
          // mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Add product",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(),
            if (image != null)
              Image.file(
                image!,
                width: 160,
                height: 100,
              ),
            CustomTextField(
              textEditingController: nameController,
              label: "Name",
            ),
            CustomTextField(
              textEditingController: portionController,
              label: "Portion",
            ),
            CustomTextField(
              textEditingController: priceController,
              label: "Price",
              keyBoardType: TextInputType.number,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text("Pick Image:"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      pickImage(ImageSource.gallery);
                    },
                    child: const Text("Gallery")),
                ElevatedButton(
                    onPressed: () {
                      pickImage(ImageSource.camera);
                    },
                    child: const Text("Camera")),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            CustomButton(onTap: addProduct, title: "Add Item")
          ],
        ),
      ),
    );
  }
}
