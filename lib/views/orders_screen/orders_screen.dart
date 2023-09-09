import 'package:gas_giver/const/const.dart';
import 'package:gas_giver/views/widgets/appbar_widget.dart';
import 'package:intl/intl.dart' as intl;

import '../widgets/text_style.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(orders),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: List.generate(
              20 , (index) => ListTile(

              onTap: () {},
              tileColor: textfieldGrey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              // leading: Image.asset(imgProduct, width: 100, height: 100, fit: BoxFit.cover),
              title: boldText(text: "0300141947", color: purpleColor),
              subtitle: Column(
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.calendar_month, color: fontGrey),
                        10.widthBox,
                        boldText(text: intl.DateFormat().add_yMd().format(DateTime.now()), color: fontGrey),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(Icons.payment, color: fontGrey),
                        10.widthBox,
                        boldText(text: unpaid, color: red),
                        ],
                    ),
                  ],

              ),
              trailing: boldText(text: "\$40.0", color: purpleColor, size: 16.0),
            ).box.margin(const EdgeInsets.only(bottom: 4)).make(),
            ),
          ),
        ),
      ),
    );
  }
}