  import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zoomer/gen/assets.gen.dart';
import 'package:zoomer/localization/app_localizations.dart';

import 'default_input.dart';

class PasswordInput extends StatefulWidget {
  const PasswordInput({
    this.password,
    this.title,
    this.hint,
    this.haveError = false,
    this.onChanged,
  });

  final String? password;
  final String? title;
  final String? hint;
  final bool haveError;
  final ValueChanged<String>? onChanged;

  @override
  _PasswordInputState createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  late bool _obscureText;
  late String? _password;

  @override
  void initState() {
    super.initState();
    _obscureText = true;
    _password = widget.password;
  }

  @override
  Widget build(BuildContext context) => DefaultInput(
        text: _password,
        maxLength: 40,
        title: widget.title ?? AppLocalizations.of(context).password,
        haveError: widget.haveError,
        maxLines: 1,
        keyboardType: TextInputType.visiblePassword,
        obscureText: _obscureText,
        onChanged: (text) {
          _password = text;
          widget.onChanged?.call(text);
        },
        //prefixIcon: SvgPicture.asset(Assets.images.lock, width: 24, height: 24),
        // suffixIcon: _password?.isNotEmpty == true
        //     ? GestureDetector(
        //         onTap: () {
        //           _togglePasswordObscure();
        //         },
        //         child: SvgPicture.asset(Assets.images.eye, width: 24, height: 24),
        //       )
        //     : const SizedBox(),
      );

  void _togglePasswordObscure() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
}
