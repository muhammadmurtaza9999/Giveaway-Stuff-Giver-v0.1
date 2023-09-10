import 'package:gas_giver/const/const.dart';
import 'package:gas_giver/views/messages_screen/components/chat_bubble.dart';
import 'package:gas_giver/views/widgets/text_style.dart';
import 'package:get/get.dart';


class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: const Icon(Icons.arrow_back, color: darkGrey),
        onPressed: () {
          Get.back();
        },
        ),
        title: boldText(text: chats, size: 16.0, color: fontGrey),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(child: ListView.builder(
              itemCount: 20,
                itemBuilder: ((context, index) {
                  return chatBubble();
                }),
              // color: Colors.green,
            ),),
            10.heightBox,
            SizedBox(
              height: 60,
                child: Row(
                  children: [
                    Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(
                            isDense: true,
                              hintText:"Enter message",
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: purpleColor
                                )
                              ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: purpleColor)),
                          ),
                        )),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.send, color: purpleColor))
                  ],
                ),
              ),
            ],
        ),
      ),
    );
  }
}
