import 'package:flutter/material.dart';
import 'package:pomo/common/theme.dart';

class Input extends StatefulWidget {
  final TextEditingController? controller;
  final String? label;
  final Widget? prefixIcon;
  final String? hintText;

  const Input({
    super.key,
    this.controller,
    this.label,
    this.prefixIcon,
    this.hintText,
  });

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null)
          Text(
            widget.label!,
            style: TextStyle(
              color: ThemeApp.gray900,
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        const SizedBox(height: 8.0),
        SizedBox(
          height: 65.0,
          child: TextField(
            focusNode: _focusNode,
            controller: widget.controller,
            decoration: InputDecoration(
              hintText: widget.hintText,
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(color: ThemeApp.primary900, width: 2.0),
              ),
              fillColor:
                  _focusNode.hasFocus
                      ? ThemeApp.backgroundOrange
                      : ThemeApp.gray100,
              prefixIcon: widget.prefixIcon,
              prefixIconColor:
                  _focusNode.hasFocus ? ThemeApp.primary900 : ThemeApp.gray900,
            ),
          ),
        ),
      ],
    );
  }
}
