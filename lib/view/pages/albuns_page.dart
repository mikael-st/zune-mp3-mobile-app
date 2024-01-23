import 'package:zune/service/permissions.dart';
import 'package:zune/view/components/header.dart';
import 'package:zune/view/components/lib_button.dart';
import 'package:zune/view/components/order_by.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AlbunsPage extends StatefulWidget {
  const AlbunsPage({super.key});

  @override
  State<AlbunsPage> createState() => AlbunsPageState();
}

class AlbunsPageState extends State<AlbunsPage> {
  @override
  void initState() {
    super.initState();
    PermissionController.checkPermission();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: const Header(title: 'Albuns'), body: list());
  }

  Widget list() {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 15), child: Container());
  }
}

// FutureBuilder(
//             future: FileManager.getAlbuns(),
//             builder: (context, snapshot) {
//               if (snapshot.data == null) {
//                 return const Center(child: Text('Nenhuma música encontrada'));
//               } else if (snapshot.connectionState == ConnectionState.waiting) {
//                 return const Center(child: CircularProgressIndicator());
//               } else {
//                 print(snapshot.data);
//                 return ListView(children: [
//                   OrderBy(),
//                   ...List.generate(snapshot.data!.length, (index) {
//                     late Uint8List image;
//                     FileManager.getArtwork(snapshot.data![index].id)
//                         .then((value) => image = value);
//                     return Padding(
//                         padding: const EdgeInsets.only(bottom: 10),
//                         child: LibButton(
//                             title: '${snapshot.data![index].album}',
//                             sub: '${snapshot.data![index].artist}',
//                             art: MemoryImage(image),
//                             icon: Icons.album));
//                   })
//                 ]);
//               }
//             })


// FutureBuilder(
//             future: FileManager.getArtwork(3),
//             builder: (context, snapshot) {
//               if (snapshot.data == null) {
//                 return const Center(child: Text('Nenhuma album encontrada'));
//               } else if (snapshot.connectionState == ConnectionState.waiting) {
//                 return const Center(child: CircularProgressIndicator());
//               } else {
//                 return Container(
//                   width: 55,
//                   height: 55,
//                   decoration: BoxDecoration(
//                       image: DecorationImage(
//                           image: MemoryImage(snapshot.data!),
//                           fit: BoxFit.cover)),
//                 );
//               }
//             })
