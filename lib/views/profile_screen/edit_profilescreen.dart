import 'package:gas_giver/const/const.dart';
import 'package:gas_giver/views/widgets/custom_textfiled.dart';
import '../widgets/text_style.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        title: boldText(text: editProfile, size: 16.0),
        actions: [TextButton(onPressed: () {}, child: normalText(text: save))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset(imgProduct, width: 150).box.roundedFull.clip(Clip.antiAlias).make(),
            10.heightBox,
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: white),
                onPressed: () {},
                child: normalText(text: changeImage, color: fontGrey),
            ),
            10.heightBox,
            const Divider(color: white),
            customTextFiled(label: name, hint: "eg.Catoo "),
            10.heightBox,
            customTextFiled(label: password, hint: passwordHint),
            customTextFiled(label: confirmPass, hint: passwordHint),
          ],
        ),
      ),
    );
  }
}
