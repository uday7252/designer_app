import '/provider/carousel_index_provider.dart';
import '/provider/professional_index_provider.dart';

import '/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'views/login_signup/ui/screens/create_profile/auth_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider(
//           create: (context) => StepProvider(),
//           builder: (context, child) => MaterialApp(
//             debugShowCheckedModeBanner: false,
//             title: 'Designer App',
//             theme: ThemeData(
//               primaryColor: secondaryColor,
//               appBarTheme: const AppBarTheme(
//                 iconTheme: IconThemeData(color: Colors.black),
//               ),
//             ),
//             home: const AuthScreen(authType: AuthType.login),
//           ),
//         ),
//       ],
//     );
//   }
// }
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<StepProvider>(
          create: (_) => StepProvider(),
        ),
        ChangeNotifierProvider<CarouselIndexProvider>(
          create: (_) => CarouselIndexProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Designer App',
        theme: ThemeData(
          primaryColor: secondaryColor,
          appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(color: Colors.black),
          ),
        ),
        home: const AuthScreen(authType: AuthType.login),
      ),
    );
  }
}

        // DesignIdeasScreen(),
        // GetQuoteScreen(),
        // RootApp(),
        // IntroScreen(),
        // UserSelectionScreen(),
        // OtpScreen(),
        // CreatePasswordScreen(),
        // ForgotPasswordScreen(),
        // PwdChangeSuccessScreen(),
        // CreateProfileScreen(),