import '../../../assets/palette.dart';
import 'package:flutter/material.dart';

class OrderBy extends StatefulWidget {
  const OrderBy({super.key});

  @override
  State<OrderBy> createState() => _OrderByState();
}

class _OrderByState extends State<OrderBy> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
        contentPadding: EdgeInsets.zero,
        onTap: () {},
        leading: Icon(
          Icons.arrow_drop_up,
          color: Palette.text,
        ),
        title: Text(
          'Nome',
          style: TextStyle(
              color: Palette.text, fontSize: 12, fontWeight: FontWeight.bold),
        ));

    // Container(
    //     margin: EdgeInsets.only(top: 26),
    //     child: Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //       children: [
    //         Column(
    //           mainAxisSize: MainAxisSize.min,
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: [
    //             Text(
    //               'Músicas',
    //               style: TextStyle(
    //                   color: Palette.text,
    //                   fontSize: 22,
    //                   fontWeight: FontWeight.bold),
    //             )
    //           ],
    //         ),
    //       ],
    //     ));
  }
}
