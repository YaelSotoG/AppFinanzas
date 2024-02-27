import 'package:flutter/material.dart';




final List<String> familia=<String>["Yael","Paty","Itza","Mamá","Papá"];
class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aplicación para ver las finanzas de la casa'),

      ),
      //body: Center(child: Text('Aqui se vera un listado de nosotros'),),
      body: listado(),
    );
  }
}


Widget listado(){
  return ListView.separated(
    padding: const EdgeInsets.all(8),
    itemCount: familia.length,
    itemBuilder: (BuildContext context, int index){
      return Container(
        height: 50,
        color: Colors.amber,
        child: Center(child: Text('finanzas de:  ${familia[index]}'),),
      );
    },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
  );
}