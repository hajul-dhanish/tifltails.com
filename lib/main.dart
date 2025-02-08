import 'package:TiflTails/data/supabase.dart';
import 'package:flutter/material.dart';
import 'package:TiflTails/constants.dart';
import 'package:TiflTails/screens/home/home_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final String releaseVersion = "v0.1.25020800.pv";

Future<void> main() async {
  await Supabase.initialize(
    url: SupabaseService.initializeUrl,
    anonKey: SupabaseService.anonKey,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tifl Tails',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        textTheme: GoogleFonts.openSansTextTheme(Theme.of(context).textTheme),
        scaffoldBackgroundColor: kBgColor,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: TextButton.styleFrom(backgroundColor: kPrimaryColor),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
