import 'package:flutter/material.dart';

import 'package:preferencias/src/widgets/menu_widget.dart';
import 'package:preferencias/src/share_prefs/preferencias_usuario.dart';

class HomePage extends StatelessWidget {
  static final String routeName = 'home';
  final prefs = new PreferenciasUsuario();

  @override
  Widget build(BuildContext context) {
    prefs.ultimaPagina = HomePage.routeName;
    return Scaffold(
      appBar: AppBar(
        title: Text('Preferencias de usuario'),
        backgroundColor: prefs.colorSecundario ? Colors.teal : Colors.blue,
        centerTitle: true,
      ),
      drawer: MenuWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Color secundario ${prefs.colorSecundario}'),
          Divider(),
          Text('Género ${prefs.genero}'),
          Divider(),
          Text('Nombre de usuario ${prefs.nombreUsuario}'),
          Divider(),
        ],
      ),
    );
  }
}
