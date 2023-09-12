import 'package:gas_giver/const/const.dart';
import 'package:gas_giver/views/widgets/custom_textfiled.dart';
import 'package:gas_giver/views/widgets/text_style.dart';
import 'package:get/get.dart';

class AddProduct extends StatelessWidget {
  const AddProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back)),
        title: boldText(text: "Add product", size: 16.0),
        actions: [TextButton(onPressed: () {}, child: boldText(text: save, color: white))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            customTextFiled(hint: "eg.BMW", label: "Product name"),
          ],
        ),
      ),
    );
  }
}
