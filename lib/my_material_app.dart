import 'package:easy_localization/easy_localization.dart';
import 'package:finalproject/screens/admin/admin-users_screen.dart';
import 'package:finalproject/screens/auth/login_screen.dart';
import 'package:finalproject/screens/guest/guest-screen.dart';
import 'package:finalproject/screens/home/home_page.dart';
import 'package:finalproject/screens/home/mail_details_screen.dart';
import 'package:finalproject/screens/loading/loading_screen.dart';
import 'package:finalproject/screens/new%20inbox/new_inbox_view.dart';
import 'package:finalproject/screens/search/search_screen.dart';
import 'package:finalproject/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyMaterialApp extends StatelessWidget {
  const MyMaterialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'PalMail',
      theme: ThemeData(
        fontFamily: 'Poppins',
        iconTheme: const IconThemeData(color: Color(0xffB2B2B2)),
        textTheme: TextTheme(
            bodySmall: GoogleFonts.poppins(
                color: const Color(0xffB2B2B2), fontSize: 12),
            bodyMedium: GoogleFonts.poppins(
                color: const Color(0xff272727), fontSize: 18)),
        appBarTheme: const AppBarTheme(backgroundColor: Color(0xffF7F6FF)),
        scaffoldBackgroundColor: const Color(0xffF7F6FF),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // useMaterial3: true,
      ),
      home: const LoginScreen(),
      routes: {
        LoadingScreen.id: (context) => const LoadingScreen(),
        MailDetailsScreen.id: (context) => const MailDetailsScreen(),
        HomePage.id: (context) => const HomePage(),
        SearchScreen.id: (context) => const SearchScreen(),
        GuestScreen.id: (context) =>  const GuestScreen(),
        LoginScreen.id: (context) =>  const LoginScreen(),
        SplashScreen.id: (context) =>  const SplashScreen(),
      },
    );
  }
}
