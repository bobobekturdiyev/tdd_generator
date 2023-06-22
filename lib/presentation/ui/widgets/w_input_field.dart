import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../resources/app_icons.dart';

import '../resources/app_colors.dart';
import '../resources/styles.dart';

class WInputField extends StatefulWidget {
  final FocusNode? focusNode;
  final TextEditingController controller;
  final bool isObscure;
  final Widget? prefixIcon;
  final List<TextInputFormatter> formatters;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final int? maxLength;
  final String? errorText;
  final Function(String)? onSubmitted;

  const WInputField(
      {Key? key,
      this.focusNode,
      required this.controller,
      this.isObscure = false,
      this.prefixIcon,
      this.formatters = const [],
      this.keyboardType = TextInputType.text,
      this.textInputAction = TextInputAction.search,
      this.maxLength,
      this.errorText,
      required this.onSubmitted(String str)})
      : super(key: key);

  @override
  State<WInputField> createState() => _WInputFieldState();
}

class _WInputFieldState extends State<WInputField> {
  bool toggle = false;
  bool hasCross = false;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (str) {
        if (str.isNotEmpty && !hasCross) {
          setState(() {
            hasCross = true;
          });
        } else if (str.isEmpty && hasCross) {
          setState(() {
            hasCross = false;
          });
        }
      },
      focusNode: widget.focusNode,
      controller: widget.controller,
      style: Styles.getSearchTextStyle(),
      obscureText: widget.isObscure && !toggle,
      maxLength: widget.maxLength,
      textAlignVertical: TextAlignVertical.center,
      onSubmitted: widget.onSubmitted,
      decoration: InputDecoration(
        errorText: widget.errorText,
        suffixIcon: widget.controller.text.isNotEmpty
            ? GestureDetector(
                onTap: _onTap,
                child: const Icon(
                  Icons.close,
                  color: AppColors.black,
                ))
            : null,
        filled: true,
        fillColor: AppColors.inputColor,
        border: _getBorder(),
        enabledBorder: _getBorder(),
        focusedBorder: _getBorder(),
        hintText: "Qidirish",
        hintStyle: Styles.getSearchTextStyle(),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        counterText: "",
      ),
      textInputAction: widget.textInputAction,
      cursorColor: AppColors.black,
      keyboardType: widget.keyboardType,
      inputFormatters: widget.formatters,
    );
  }

  _onTap() {
    setState(() {
      widget.controller.text = "";
    });
  }

  _getBorder() => OutlineInputBorder(
        borderSide:
            const BorderSide(color: AppColors.inputBorderColor, width: 2),
        borderRadius: BorderRadius.circular(12),
      );
}
