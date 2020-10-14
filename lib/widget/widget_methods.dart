import 'package:GetX_example/const/theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

String dateFormat(DateTime date) {
  return DateFormat('dd, MMMM yyyy').format(date);
}

Widget listTile(String image, String materi, String tanggal, {Function onTap}) {
  return ListTile(
    contentPadding: EdgeInsets.all(15),
    leading: Image.asset(image, height: 40),
    trailing: PopupMenuButton(
      icon: Icon(Icons.more_vert),
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 1,
          child: InkWell(
            splashColor: tealColor,
            onTap: onTap,
            child: Text(
              "Buka Materi",
              style: blackTextFont2,
            ),
          ),
        ),
      ],
    ),
    title: Text(
      tanggal,
      style: greyTextFont,
    ),
    subtitle: Text(
      materi,
      style: blackTextFont,
    ),
  );
}

Widget colorList(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 9.4,
    decoration: BoxDecoration(
      color: tealColor,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(4),
        bottomRight: Radius.circular(4),
      ),
    ),
  );
}
