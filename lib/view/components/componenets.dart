import 'package:flutter/material.dart';

import '../../core/constance/colors/colors.dart';

Widget lable({
  required String label,
  FontWeight? fontWeight,
}) {
  return
      // Expanded(child:
      Text(
    label,
    style: TextStyle(
      color: grey.shade800,
      fontWeight: fontWeight,
      fontSize: 14,
    ),
    //),
  );
}

Widget defaultButton({
  double width = double.infinity,
  Color background = decolor,
  bool isUpperCase = true,
  double radius = 10.0,
  required String text,
  required VoidCallback onpressed,
}) =>
    Container(
      width: width,
      height: 60.0,
      // ignore: sort_child_properties_last
      child: MaterialButton(
        onPressed: onpressed,
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: background,
      ),
    );
Widget textformField(context, {required String text}) {
  return Container(
    width: MediaQuery.of(context).size.width - 70,
    height: 55,
    decoration:
        BoxDecoration(color: white, borderRadius: BorderRadius.circular(10)),
    child: TextFormField(
      style: const TextStyle(
        fontSize: 17,
        color: white,
      ),
      decoration: InputDecoration(
        hintText: text,
        hintStyle: const TextStyle(color: black, fontSize: 15),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        enabled: false,
        labelStyle: const TextStyle(
          fontSize: 17,
          color: white,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            width: 1.5,
            color: blue,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            width: 1,
            color: grey,
          ),
        ),
      ),
    ),
  );
}

void navigatTo(context, widget) =>
    Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
Widget showLoadingIndicator() {
  return const Center(
    child: CircularProgressIndicator(
      color: black,
    ),
  );
}

Widget defaultFormFieldAuth({
  TextEditingController? controller,
  TextInputType? type,
  bool isPassword = false,
  final String? Function(String?)? validate,
  String? text,
  final Function()? onTap,
  bool isClickable = true,
  bool? password,
}) =>
    Container(
      child: TextFormField(
        maxLines: 1,
        controller: controller,
        validator: validate,
        keyboardType: type,
        obscureText: isPassword,
        enabled: isClickable,
        onTap: onTap,
        decoration: InputDecoration(
            hintText: text,
            hintStyle: const TextStyle(color: blackgrey, fontSize: 14),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            border: const OutlineInputBorder(
                borderSide:
                    BorderSide(color: blue, width: 5, style: BorderStyle.solid),
                borderRadius: BorderRadius.all(Radius.circular(10)))),
      ),
    );
