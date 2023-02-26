import 'package:flutter/material.dart';


const kPrimaryColor = Color(0xFFFF7643);
const kBackgroundColor = Color(0xFFF8F9FA);
const kBackgroundColor2 = Color(0XFFF4F0ED);
const kBackgroundColor3 = Color(0xFFE9E9E9);
const StartUpColor = Color(0xFF98B78D);
const StartUpBack = Color(0xFFE3E3E3);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);

const kDefaultPaddin = 20.0;
// Form Error
final RegExp emailValidatorRegExp =
RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Lütfen mail adresinizi giriniz";
const String kPassNullError = "Lütfen şifrenizi giriniz";
const String kShortPassError = "Şifre çok kısa";
const String kMatchPassError = "Şifreler birbiri ile uyuşmuyor";

const String kNamelNullError = "Lütfen isminizi giriniz";
const String kPhoneNumberNullError = "Lütfen telefon numaranızı giriniz";