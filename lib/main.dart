import 'package:flutter/material.dart';
import 'package:isa_can_akhan_01/custom_widgets/routes.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'Screens/deneme/login_register_http.dart';
import 'supaDeneme/kayit_ve_login_ekranlari.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://kygiuxpglxzfdaejyfio.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt5Z2l1eHBnbHh6ZmRhZWp5ZmlvIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzU3OTg0NjIsImV4cCI6MTk5MTM3NDQ2Mn0.x4s4CxTpLq60tqohV_lVlAihKAkI2EaVoxCPJpkapGE',
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.grey),
      // home: LoginAndRegisterHttp(),
      initialRoute:
          supabase.auth.currentSession != null ? '/simpleapp' : '/home',

      routes: {
        '/home': (context) => const HomePage(),
        '/signIn': (context) => const LoginEkrani(),
        '/signup': (context) => const KayitEkrani(),
        '/simpleapp': (context) => const SimpleAppPage(),
      },

      // routes: routes,
    );
  }
}
