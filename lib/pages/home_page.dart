import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/pages/direcciones_page.dart';
import 'package:qr_reader/pages/mapas_page.dart';
import 'package:qr_reader/providers/ui_provider.dart';
import 'package:qr_reader/widgets/custom_navigatorbar.dart';
import 'package:qr_reader/widgets/scan_button.dart';


class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Historial'),
        actions: [IconButton(
          onPressed: (){}, 
          icon: Icon(Icons.delete_forever))],
      ),
      body: _HomePageBody(),
     bottomNavigationBar: CustomNavigationBar(),
     floatingActionButton: ScanButton(),
     floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
   );
  }
}

class _HomePageBody extends StatelessWidget {
  //const _HomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    //Obtener el current o el selected menu opt
    //Se necesita especificar <UiProvider>, para que sepa que ese es el provider que debe de buscar
    final uiProvider = Provider.of<UiProvider>(context);

    //Cambiar para mostrar la pagina respectiva
    final currentIndex = uiProvider.selectedMenuOpt;

    switch(currentIndex) {
      
      case 0:
        return MapasPage();

      case 1:
        return DireccionesPage();

      default: 
        return MapasPage();
    }
}
}