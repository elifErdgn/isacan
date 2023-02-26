import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter/material.dart';

final supabase = Supabase.instance.client;


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => KayitEkrani()));
            },
            child: Container(
              height: 50,
              width: 250,
              color: Colors.deepPurple.shade200,
              child: Center(child: Text("Kayıt Ol")),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginEkrani()));
            },
            child: Container(
              height: 50,
              width: 250,
              color: Colors.green.shade200,
              child: Center(child: Text("Giriş Yap")),
            ),
          ),
        ],
      ),
    );
  }
}

class KayitEkrani extends StatefulWidget {
  const KayitEkrani({Key? key}) : super(key: key);

  @override
  State<KayitEkrani> createState() => _KayitEkraniState();
}

class _KayitEkraniState extends State<KayitEkrani> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  Future<bool> createUser({
    required final String email,
    required final String password,
  }) async {
    final AuthResponse response = await supabase.auth.signUp(
      password: password.trim(),
      email: email.trim(),
    );
    final session = response.session;
    if (session == null) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 20),
            Text("Mailinizi giriniz"),
            SizedBox(height: 20),
            TextFormField(
              controller: _email,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            Text("Şifrenizi giriniz"),
            SizedBox(height: 20),
            TextFormField(
              controller: _password,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () async {
                print("butona tıklandı");
                final userValue = await createUser(
                  email: _email.text,
                  password: _password.text,
                );
                if (userValue == true) {
                  print("kayıt başarılı");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginEkrani(),
                      ));
                } else {
                  print("kayıt başarısız");
                }
                print("metot sonu");
              },
              child: Container(
                height: 50,
                width: double.infinity,
                color: Colors.red,
                child: Center(
                  child: Text("Kayıt Ol"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginEkrani extends StatefulWidget {
  const LoginEkrani({Key? key}) : super(key: key);

  @override
  State<LoginEkrani> createState() => _LoginEkraniState();
}

class _LoginEkraniState extends State<LoginEkrani> {
  TextEditingController _emailcont = TextEditingController();
  TextEditingController _passwordcont = TextEditingController();
//  bool _isLoading = false;


  @override
  void initState() {
    _emailcont = TextEditingController();
    _passwordcont = TextEditingController();
    super.initState();
  }


  Future<dynamic> userLogin({
    required final String email,
    required final String password,
  }) async {
    final AuthResponse response = await supabase.auth.signInWithPassword(
      email: email.trim(),
      password: password.trim(),
    );
    final Session? session = response.session;
    final user = response.user;
    return user?.id;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 20),
            Text("Mailinizi giriniz"),
            SizedBox(height: 20),
            TextFormField(
              controller: _emailcont,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            Text("Şifrenizi giriniz"),
            SizedBox(height: 20),
            TextFormField(
              controller: _passwordcont,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),

            /*
           *  _isLoading
                ? Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.pink,
                    ),
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  )
                :
           * */
            InkWell(
              onTap: () async {
                // setState(() {
                //   _isLoading = true;
                // });
                dynamic loginValue = await userLogin(
                  email: _emailcont.text,
                  password: _passwordcont.text,
                );
                // setState(() {
                //   _isLoading = false;
                // });
                if (loginValue != null) {
                  print("giriş başarılı");
                  Navigator.pushReplacementNamed(
                    context,
                    '/simpleapp',
                  );
                } else {
                  print("giriş başarısız");
                  //  context.showErrorMessage('Invalid email or password');
                }
              },
              child: Container(
                height: 50,
                width: double.infinity,
                color: Colors.red,
                child: Center(
                  child: Text("Kayıt Ol"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class SimpleAppPage extends StatefulWidget {
  const SimpleAppPage({Key? key}) : super(key: key);

  @override
  State<SimpleAppPage> createState() => _SimpleAppPageState();
}

class _SimpleAppPageState extends State<SimpleAppPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                supabase.auth.signOut();
                Navigator.pushNamedAndRemoveUntil(
                    context, '/home', (route) => false);
              },
              icon: Icon(Icons.logout),
            );
          },
        ),
      ),
      body: Center(
        child: Column(),
      ),
    );
  }
}

