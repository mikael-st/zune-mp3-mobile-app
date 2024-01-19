import 'package:first_app/service/permissions.dart';
import 'package:first_app/service/repositories/file_manager.dart';
import 'package:first_app/view/components/header.dart';
import 'package:first_app/view/components/lib_button.dart';
import 'package:first_app/view/components/order_by.dart';
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
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: Text('TO-DO'));
  }
}
