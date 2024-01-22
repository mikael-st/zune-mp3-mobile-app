import 'package:zune/view/components/menu.dart';
import 'package:flutter/material.dart';

class PageModel extends StatefulWidget {
  final int index;
  final Widget child;
  const PageModel({super.key, required this.index, required this.child});

  @override
  State<PageModel> createState() => _PageModelState();
}

class _PageModelState extends State<PageModel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: Menu(current: widget.index),
    );
  }
}
