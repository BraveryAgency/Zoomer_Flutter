import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zoomer/app/resources/app_colors.dart';

class DefaultInput extends StatefulWidget {
  DefaultInput({
    this.title,
    this.text,
    this.hint,
    this.haveError = false,
    this.onChanged,
    this.keyboardType,
    this.obscureText = false,
    this.suffixIcon,
    this.prefixIcon,
    this.inputFormatters,
    this.maxLength,
    this.minLines,
    this.maxLines,
    this.contentPadding,
    this.style,
    this.autoFocus = false,
    this.focus,
    this.focusScope,
  });

  final String? title;
  final String? text;
  final String? hint;
  final bool haveError;
  final ValueChanged<String>? onChanged;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLength;
  final int? minLines;
  final int? maxLines;
  final EdgeInsets? contentPadding;
  final bool autoFocus;
  final TextStyle? style;
  final FocusNode? focus;
  final FocusScopeNode? focusScope;

  @override
  _DefaultInputState createState() => _DefaultInputState();
}

class _DefaultInputState extends State<DefaultInput> {
  late TextEditingController _controller;
  late FocusNode _focus;

  //late VoidCallback _focusListener;


  @override
  void initState() {

//    _focusListener = () {
//      setState(() {});
//    };
    //FocusScope.of(context).requestFocus(null);
    _focus = widget.focus != null ? widget.focus! : FocusNode();
    //_focus.addListener(_focusListener);
    _controller = TextEditingController(text: (widget.text?.isNotEmpty ?? false) ? widget.text : null);
    //FocusScope.of(context).requestFocus(_focus);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();

//    _focus.removeListener(_focusListener);
//    if(widget.focus == null){
//      _focus.dispose();
//    }
  }

  @override
  void didUpdateWidget(covariant DefaultInput oldWidget) {
    super.didUpdateWidget(oldWidget);
    String? newText = widget.text;
    if (_controller.text != newText) {
      if (newText?.isNotEmpty ?? false) {
        _controller.value =
            TextEditingValue(text: newText!, selection: TextSelection.collapsed(offset: newText.length));
      } else {
        _controller.clear();
      }
    }
  }

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          _buildInput(),
          Positioned.fill(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: widget.prefixIcon,
              ),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 16),
                child: widget.suffixIcon,
              ),
            ),
          ),
        ],
      );



  Widget _buildInput() => Container(
        padding: EdgeInsets.symmetric(vertical: 9, horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: widget.haveError
                ? AppColors.error
                : _focus.hasFocus
                    ? AppColors.focusedInputBorder
                    : AppColors.inputBorder,
          ),
        ),
        child: TextField(
          controller: _controller,
          keyboardType: widget.keyboardType,
          maxLength: widget.maxLength ?? 120,
          minLines: widget.minLines,
          maxLines: widget.maxLines,
          style: widget.style,
          inputFormatters: widget.inputFormatters,
          decoration: InputDecoration(
            hintText: widget.hint,
            // errorText: widget.error,
            labelText: widget.title,
            isDense: true,
            floatingLabelBehavior: FloatingLabelBehavior.auto,
            contentPadding: widget.contentPadding ??
                EdgeInsets.only(
                  left: widget.prefixIcon != null ? 40 : 0,
                  right: widget.suffixIcon != null ? 40 : 0,
                  top: 0,
                  bottom: 0,
                ),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            suffixIconConstraints: BoxConstraints(maxHeight: 24, minHeight: 24, maxWidth: 24, minWidth: 24),
            prefixIconConstraints: BoxConstraints(maxHeight: 24, minHeight: 24, maxWidth: 24, minWidth: 24),
            counterText: '',
          ),
          obscureText: widget.obscureText,
          onChanged: (text) {
            widget.onChanged?.call(text);
          },
          //autofocus: true,
          focusNode: _focus,
        ),
      );
}
