import 'package:gas_giver/const/const.dart';
import 'package:gas_giver/views/widgets/custom_textfiled.dart';
import '../widgets/text_style.dart';

class ShopSettings extends StatelessWidget {
  const ShopSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        title: boldText(text: shopSettings, size: 16.0),
        actions: [TextButton(onPressed: () {}, child: normalText(text: save))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            customTextFiled(
              label: shopName,
              hint: nameHint,
            ),
            10.heightBox,
            customTextFiled(
              label: address,
              hint: shopAddressHint,
            ),
            10.heightBox,
            customTextFiled(
              label: mobile,
              hint: shopMobileHint,
            ),
            10.heightBox,
            customTextFiled(
              label: websit,
              hint: shopWebsitHint,
            ),
            10.heightBox,
            customTextFiled(
              isDesc: true,
              label: description,
              hint: shopDescHint,
            ),
          ],
        ),
      ),
    );
  }
}
