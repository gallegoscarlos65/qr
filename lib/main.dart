import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/pages/home_page.dart';
import 'package:qr_reader/pages/mapa_page.dart';
import 'package:qr_reader/providers/ui_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //El multiprovider servira para envolver a toda la aplicacion y asi decirle a un widget que desea buscar otro widget
    return MultiProvider(

      providers: [
        //Con esto en el arbol de widgets ya se va a tener una instancia de UiProvider
        ChangeNotifierProvider(create: (_) => new UiProvider())
      ],

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'QR Reader',
        initialRoute: 'home',
        routes: {
          'home': (_) => HomePage(),
          'mapa': (_) => MapaPage(),
        },
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.deepPurple,
          ).copyWith(
            secondary: Colors.deepPurple,
          ),
        ),
      ),
    );
  }
}
