import 'package:zune/assets/palette.dart';
import 'package:flutter/material.dart';
import 'package:zune/view/components/menu.dart';

// ignore: must_be_immutable
class SearchPage extends StatelessWidget {
  final int index = 2;
  List<String> options = const [
    'Tudo',
    'Músicas',
    'Albuns',
    'Artistas',
    'Gêneros'
  ];
  final TextEditingController _searchQueryController = TextEditingController();

  SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Palette.various,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Palette.text,
            size: 18,
          ),
        ),
        title: TextField(
          controller: _searchQueryController,
          decoration: InputDecoration(
            hintStyle: TextStyle(color: Palette.text),
            hintText: 'Pesquisar',
            border: InputBorder.none,
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 15, right: 15),
        decoration:
            BoxDecoration(border: Border.all(color: Colors.red, width: 1)),
        child: optionsButtons(),
      ),
      bottomNavigationBar: NavBar(current: index),
    );
  }

  Widget optionsButtons() {
    return SizedBox(
        width: 70,
        height: 32,
        child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                // alignment: Alignment.centerLeft,
                backgroundColor:
                    MaterialStateProperty.all<Color>(Palette.icon_box),
                padding: MaterialStateProperty.all<EdgeInsets>(
                    EdgeInsets.only(left: 10))),
            child: Text(options[0],
                style: TextStyle(
                  color: Palette.text,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ))));

    // Container(
    //     height: 30,
    //     child: ListView(
    //       clipBehavior: Clip.none,
    //       scrollDirection: Axis.horizontal,
    //       children: [
    //         ...List.generate(
    //             options.length,
    //             (index) => ElevatedButton(
    //                   onPressed: () {},
    //                   style: ButtonStyle(
    //                       backgroundColor: MaterialStateProperty.all<Color>(
    //                           Palette.icon_box),
    //                       padding: MaterialStateProperty.all<EdgeInsets>(
    //                           EdgeInsets.only(left: 10))),
    //                   child: Text(
    //                     options[index],
    //                     style: TextStyle(
    //                       color: Palette.text,
    //                       fontSize: 12,
    //                       fontWeight: FontWeight.bold,
    //                     ),
    //                   ),
    //                 ))
    //       ],
    //     ));
  }
}
