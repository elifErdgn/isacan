import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../datas/model/login_model.dart';
import '../../datas/service/services.dart';
import '../../utils/constants.dart';
import '../../utils/size_config.dart';
import '../customer_pages/profile_screen/benim_hesabim.dart';
import 'customSurffixIcon.dart';
import 'forgot_password.dart';
import 'form_error.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginBody(),
    );
  }
}

class LoginBody extends StatelessWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: SizeConfig.screenHeight * 0.04), //%4
                  Text(
                    "Giriş Yap",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: getProportionateScreenWidth(28),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.01),
                  Text(
                    "E-mail ve şifre bilgilerinizi kullanarak giriş yapabilir \nveya başka bir sosyal medya hesabınızla devam edebilirsiniz ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black45,
                    ),
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.04),

                  /// TEXTFİELD ALANLARI
                  SignForm(),
                  SizedBox(height: SizeConfig.screenHeight * 0.04),

                  ///SOSYAL MEDTA İCONLARI - BUTONLARI
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialCard(
                        icon: "assets/icons/google-icon.svg",
                        press: () {},
                      ),
                      SocialCard(
                        icon: "assets/icons/facebook-2.svg",
                        press: () {},
                      ),
                      SocialCard(
                        icon: "assets/icons/twitter.svg",
                        press: () {},
                      ),
                    ],
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.02),

                  /// HESABIM YOK - KAYIT OL EKRANINA YÖNLENDİRME KISMI
                  NoAccountText(),
                ],
              ),
            )),
      ),
    );
  }
}

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  // final _formKey = GlobalKey<FormState>();

  List<LoginModel>? listloginApi = [];
  String? email;
  String? password;
  bool? remember = false;
  final List<String?> errors = [];
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void addError({String? error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String? error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      // key: _formKey,
      child: Column(
        children: [
          Text("$email $password"),
          buildEmailFormField(),

          /// email içeren textfield alanı
          SizedBox(height: getProportionateScreenHeight(20)),
          buildPasswordFormField(),

          /// şifre içeren textfield alanı
          SizedBox(height: getProportionateScreenHeight(20)),

          /// Beni hatırla ve şifremi unuttum mesajı
          Row(children: [
            Checkbox(
              value: remember,
              activeColor: kPrimaryColor,
              onChanged: (value) {
                setState(() {
                  remember = value;
                });
              },
            ),
            Text("Beni Hatırla "),
            Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ForgotPasswordScreen()));
              },
              child: Text(
                "Şifremi unuttum !",
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            ),
          ]),
          SizedBox(height: getProportionateScreenHeight(20)),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(10)),
          DefaultButton(
            text: "Giriş Yap",

            /// HATA VERİYORRRR
            press: () async {
              //
              // if (_formKey.currentState!.validate()) {
              //   _formKey.currentState!.save();
              // }
              veriKontrol();
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      controller: passwordController,
      cursorColor: Colors.white,
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      //Şifrenin görünümünü engelliyor - yıldız şeklinde gösteriyor
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        labelText: "Şifre",
        labelStyle: TextStyle(color: Colors.black45),
        hintText: "Şifre'nizi giriniz",
        hintStyle: TextStyle(color: Colors.black45),
        // eğer bu tanımlamayı theme kısmında uygularsak ççalışmıyor
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        labelText: "E-mail",
        labelStyle: TextStyle(color: Colors.black45),
        hintText: "E-mail'inizi giriniz",
        hintStyle: TextStyle(color: Colors.black45),
        // eğer bu tanımlamayı theme kısmında uygularsak ççalışmıyor
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/Mail.svg",
        ),
      ),
    );
  }

  /// butona bastığında çalışan kısım
  void veriKontrol() async {
    ApiService loginapi = ApiService();
    LoginModel? login = await loginapi.getLoginData(
      emailController.text,
      passwordController.text,
    );
    if (login != null) {
      if (login.statusCode == "0") {
        print("${login.message}");
        print("${login.statusCode}");
        print("oturum açıldı");
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => OturumAcildiSayfasi()));
      }
      else {
        print("oturum açılmadı");
        print("${login.message}");
        print("${login.statusCode}");
      }
    }
    else{
      print("lütfen mail ve şifre girin");
    }
  }
}

/// Sosyal Medya butonları tasarımı
class SocialCard extends StatelessWidget {
  const SocialCard({
    Key? key,
    this.icon,
    this.press,
  }) : super(key: key);

  final String? icon;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press as void Function()?,
      child: Container(
        margin:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
        padding: EdgeInsets.all(getProportionateScreenWidth(6)),
        height: getProportionateScreenHeight(40),
        width: getProportionateScreenWidth(40),
        decoration: BoxDecoration(
          color: Color(0xFFF5F6F9),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(icon!),
      ),
    );
  }
}

class OturumAcildiSayfasi extends StatelessWidget {
  const OturumAcildiSayfasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
