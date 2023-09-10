import 'package:gas_giver/const/const.dart';
import 'package:gas_giver/views/widgets/text_style.dart';

Widget customTextFiled({label, hint, controller, isDesc = false}) {
  return TextFormField(
    maxLines: isDesc ? 4 : 1,
    decoration: InputDecoration(
      isDense: true,
      label: normalText(text: label),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: white,
        )),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: white,
          )),
      hintText: hint,
    hintStyle: const TextStyle(color: lightGrey)),
  );
}
