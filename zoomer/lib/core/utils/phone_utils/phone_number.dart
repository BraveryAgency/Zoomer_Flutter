import 'dart:async';
import 'dart:math';

import 'package:equatable/equatable.dart';

import 'phone_number/phone_number_util.dart';

/// Type of phone numbers.
enum PhoneNumberType {
  FIXED_LINE, // : 0,
  MOBILE, //: 1,
  FIXED_LINE_OR_MOBILE, //: 2,
  TOLL_FREE, //: 3,
  PREMIUM_RATE, //: 4,
  SHARED_COST, //: 5,
  VOIP, //: 6,
  PERSONAL_NUMBER, //: 7,
  PAGER, //: 8,
  UAN, //: 9,
  VOICEMAIL, //: 10,
  UNKNOWN, //: -1
}

/// [PhoneNumber] contains detailed information about a phone number
class PhoneNumber extends Equatable {
  /// Either formatted or unformatted String of the phone number
  final String phoneNumber;

  /// The Country [dialCode] of the phone number
  final String dialCode;

  /// Country [isoCode] of the phone number
  final String isoCode;

  /// [_hash] is used to compare instances of [PhoneNumber] object.
  final int _hash;

  /// Returns an integer generated after the object was initialised.
  /// Used to compare different instances of [PhoneNumber]
  int get hash => _hash;

  Future<bool?> get isValid => PhoneNumberUtil.isValidNumber(phoneNumber: phoneNumber, isoCode: isoCode);
  @override
  List<Object?> get props => [phoneNumber, isoCode, dialCode];

  PhoneNumber({
    required this.phoneNumber,
    required this.dialCode,
    required this.isoCode,
  }) : _hash = 1000 + Random().nextInt(99999 - 1000);

  @override
  String toString() {
    return phoneNumber!;
  }

  /// Returns [PhoneNumber] which contains region information about
  /// the [phoneNumber] and [isoCode] passed.
  static Future<PhoneNumber> getRegionInfoFromPhoneNumber(
    String phoneNumber, [
    String isoCode = '',
  ]) async {
    RegionInfo regionInfo = await PhoneNumberUtil.getRegionInfo(phoneNumber: phoneNumber, isoCode: isoCode);

    String? internationalPhoneNumber = await PhoneNumberUtil.normalizePhoneNumber(
      phoneNumber: phoneNumber,
      isoCode: regionInfo.isoCode ?? isoCode,
    );

    return PhoneNumber(
      phoneNumber: internationalPhoneNumber ?? '',
      dialCode: regionInfo.regionPrefix ?? '',
      isoCode: regionInfo.isoCode ?? '',
    );
  }

  /// Accepts a [PhoneNumber] object and returns a formatted phone number String
  static Future<String> getParsableNumber(PhoneNumber phoneNumber) async {
    if (phoneNumber.isoCode != null) {
      PhoneNumber number = await getRegionInfoFromPhoneNumber(
        phoneNumber.phoneNumber!,
        phoneNumber.isoCode!,
      );
      String? formattedNumber = await PhoneNumberUtil.formatAsYouType(
        phoneNumber: number.phoneNumber!,
        isoCode: number.isoCode!,
      );

      return formattedNumber!.replaceAll(
        RegExp('^([\\+]?${number.dialCode}[\\s]?)'),
        '',
      );
    } else {
      print('ISO Code is "${phoneNumber.isoCode}"');
      return '';
    }
  }

  /// Returns a String of [phoneNumber] without [dialCode]
  String parseNumber() {
    return this.phoneNumber!.replaceAll("${this.dialCode}", '');
  }

  /// Returns [PhoneNumberType] which is the type of phone number
  /// Accepts [phoneNumber] and [isoCode] and r
  static Future<PhoneNumberType> getPhoneNumberType(String phoneNumber, String isoCode) async {
    PhoneNumberType type = await PhoneNumberUtil.getNumberType(phoneNumber: phoneNumber, isoCode: isoCode);

    return type;
  }
}
