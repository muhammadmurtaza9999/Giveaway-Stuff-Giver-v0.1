import 'package:gas_giver/const/const.dart';
import 'package:gas_giver/views/products_screen/add_product.dart';
import 'package:gas_giver/views/products_screen/product_details.dart';
import 'package:gas_giver/views/widgets/appbar_widget.dart';
import 'package:gas_giver/views/widgets/text_style.dart';
import 'package:get/get.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: purpleColor,
        onPressed: () {
          Get.to(() => const AddProduct());
        },
        child: const Icon(Icons.add),
      ),
      appBar: appBarWidget(products),
        body: Padding(
        padding: const EdgeInsets.all(8.0),
    child: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
      children: List.generate(
      20 ,
      (index) => Card(
       child: ListTile(
      onTap: () {
        Get.to(() => const ProductDetails());
      },
      leading: Image.asset(imgProduct, width: 100, height: 100, fit: BoxFit.cover),
      title: boldText(text: "Product title", color: fontGrey),
      subtitle: normalText(text: "\$40.0", color: darkGrey),
        trailing: VxPopupMenu(
          arrowSize: 0.0,
            menuBuilder: () =>Column(
          children: List.generate(
            popupMenuTitles.length,
                (index) => Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
            children: [
              Icon(popupMenuIcons[index]),
              10.heightBox,
              normalText(text: popupMenuTitles[index], color: darkGrey)
            ],
          ).onTap(() { }),
                ),
          ),
          ).box.white.rounded.width(200).make(),
            clickType: VxClickType.singleClick,
          child: const Icon(Icons.more_vert_rounded)),
        
      ),
      ),
      ),
    ),
        ),
    ),
    );
  }
}