import 'package:gas_giver/const/const.dart';
import 'package:gas_giver/views/widgets/text_style.dart';

Widget chatBubble(){
  return Directionality(
    textDirection: TextDirection.ltr,
    // textDirection: data['uid'] = currentUser!.uid ? TextDirection.rtl : TextDirection.ltr,
    child: Container(
    padding: const EdgeInsets.all(12),
    margin: const EdgeInsets.only(bottom: 8),
    decoration: const BoxDecoration(
        color: purpleColor,
        // color: data['uid'] = currentUser!.uid ? redColor : darkFontGrey,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
        bottomLeft: Radius.circular(20),
      )),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      normalText(text: "Your massage here..."),
      // "${data['msg']}".text.white.size(16).make(),
      10.heightBox,
      normalText(text: "10:45PM"),
      // time.text.color(whiteColor.withOpecity(0.5)).makeCentered()
    ],
    ),
  ),
  );
}