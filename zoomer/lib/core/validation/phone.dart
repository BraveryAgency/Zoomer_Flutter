import 'package:zoomer/core/utils/phone_utils/phone_number.dart';
import 'package:zoomer/core/utils/phone_utils/phone_number/phone_number_util.dart';

import 'base_form.dart';

enum PhoneValidationError { invalid, isNotFully, empty }

class PhoneForm extends BaseForm<PhoneNumber?, PhoneValidationError> {
  const PhoneForm.pure([PhoneNumber? value]) : super.pure(value);

  const PhoneForm.dirty([PhoneNumber? value]) : super.dirty(value);

  static final _phoneRegex = RegExp(r'^(?:[+]7)?[0-9]{10}$');

  @override
  PhoneValidationError? validator(PhoneNumber? value) {
    if (value?.phoneNumber.isNotEmpty != true) {
      return PhoneValidationError.empty;
    }

    if (value?.phoneNumber.length != 10) {
      return PhoneValidationError.isNotFully;
    }
    return null;

    // if (isValid == true) {
    //   return null;
    // } else {
    //   return PhoneValidationError.invalid;
    // }
  }

  String getRawNumber() => value!.dialCode + value!.phoneNumber;

  Future<String?> getFormattedNumber() async {
    String formattedNumberWithoutCode = await PhoneNumberUtil.formatAsYouType(
          phoneNumber: value!.phoneNumber,
          isoCode: value!.isoCode,
        ) ??
        value!.phoneNumber;
    return value!.dialCode + ' ' + formattedNumberWithoutCode;
  }
}
