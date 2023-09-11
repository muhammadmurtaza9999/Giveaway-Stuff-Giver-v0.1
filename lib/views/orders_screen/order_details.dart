import 'package:gas_giver/const/const.dart';
import 'package:gas_giver/views/orders_screen/components/order_place.dart';
import 'package:gas_giver/views/widgets/text_style.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart' as intl;

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back, color: darkGrey)),
        title: boldText(text: "Oder details", color: darkGrey, size: 16.0),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Column(
          children: [
              orderPlaceDetails(
                d1: "data['order_code']",
                d2: "data['shipping_method']",
                title1: "Order Code",
                title2: "Shipping Method",
              ),
              orderPlaceDetails(
                d1: DateTime.now(),
                // d1: intl.DateFormat().add_yMd().format((data['order_code'].toDate())),
                d2: "data['payment_method']",
                title1: "Order Date",
                title2: "Payment Method",
              ),
              orderPlaceDetails(
                d1: "Unpaid",
                d2: "Order Placed",
                title1: "Payment Status",
                title2: "Delivery Status",
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // "Shipping Address".text.fontFamily(semibold).make(),
                        boldText(text: "Shipping Address", color: purpleColor),
                        "{data['order_by_name']}".text.make(),
                        "{data['order_by_email']}".text.make(),
                        "{data['order_by_address']}".text.make(),
                        "{data['order_by_city']}".text.make(),
                        "{data['order_by_state']}".text.make(),
                        "{data['order_by_phone']}".text.make(),
                        "{data['order_by_postalcode']}".text.make()
                      ],
                    ),
                    SizedBox(
                      width: 130,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          boldText(text: "Total Amount", color: purpleColor),
                          boldText(text: "\$300.0", color: red, size: 16.0),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ).box.outerShadowMd.white.make(),
           const Divider(),
           10.heightBox,
              boldText(text: "Ordered Products", color: fontGrey, size: 16.0),
           10.heightBox,
           ListView(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: List.generate(3, (index) {
              return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                orderPlaceDetails(
                   title1: "data['orders'][index]['title']",
                   title2: "data['orders'][index]['tprice']",
                   d1: "{data['orders'][index]['qty']}x",
                   d2: "Refundable"),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                  width: 30,
                  height: 20,
                  color: purpleColor,
                ),
              ),
                 const Divider(),
              ],
            );
          }).toList(),
        ).box.outerShadowMd.white.margin(const EdgeInsets.only(bottom: 4)).make(),
            20.heightBox,
        ],
          ),
        ),
      ),
    );
  }
}
