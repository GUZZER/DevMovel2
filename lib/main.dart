// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //MyApp é a classe e o extends está recebendo um Widget.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //Aqui define o tema da tela.
        primarySwatch: Colors.red, //No colors eu consigo trocar a variação de cores.
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
   const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Aqui no build e onde acontece a modelagem da minha interface.
    return Scaffold(
      appBar: AppBar(
        title: Text('Marcelo'),
      ),
      body: Center(
        //Aqui na body será o esqueleto da interface mostrado na tela, aqui implementamos o Card mostrado na última aula.
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.album),
                title: Text('The Enchanted Nightingale'),
                subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: const Text('BUY TICKETS'),
                    onPressed: () {/* ... */},
                  ),
                  const SizedBox(width: 8),
                  TextButton(
                    child: const Text('LISTEN'),
                    onPressed: () {/* ... */},
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
