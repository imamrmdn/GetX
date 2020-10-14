part of '../screens.dart';

class Materi1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBar, Dialog, And BottomSheet', style: whiteTextFont),
        backgroundColor: tealColor,
      ),
      body: Column(
        children: <Widget>[
          _materi(
            context,
            'Section 1',
            'Mempelajari menggunakan snackbar dengan get.snackbar',
            _button('Show SnackBar', redAccent, onPressed: () {
              Get.snackbar('This SnackBar', 'snackbar using getx');
            }),
          ),
          _materi(
            context,
            'Section 2',
            'Mempelajari menggunakan show dialog dengan get.defaultdialog',
            _button('Show Dialog', blueOpacity, onPressed: () {
              Get.defaultDialog(
                  title: 'This ShowDialog',
                  content: Text('showdialog using getx', style: blackTextFont),
                  actions: [
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        'Cancel',
                        style: poppinsStyle,
                      ),
                      textColor: redAccent,
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        'Confirm',
                        style: poppinsStyle,
                      ),
                      textColor: blueOpacity,
                    )
                  ]);
            }),
          ),
          _materi(
            context,
            'Section 3',
            'Mempelajari menggunakan bottom sheet dengan get.bottomsheet',
            _button('Show BottomSheet', purpleAccent, onPressed: () {
              Get.bottomSheet(Container(
                height: 200,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: Center(
                  child: Text('This BottomSheet Using Get.bottomSheet',
                      style: blackTextFont),
                ),
              ));
            }),
          ),
        ],
      ),
    );
  }

  Widget _materi(
    BuildContext context,
    String section,
    String penjelasan,
    Widget button,
  ) {
    return Flexible(
      flex: 1,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: whiteColor,
          border: Border.all(color: greyColor),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  section,
                  style: blackTextFont.copyWith(
                    fontSize: 20,
                    color: tealColor,
                  ),
                ),
                Text(
                  penjelasan,
                  style: blackTextFont2,
                ),
              ],
            ),
            button,
          ],
        ),
      ),
    );
  }

  Widget _button(String text, Color color, {Function onPressed}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: MaterialButton(
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: color),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.all(15),
        minWidth: double.infinity,
        splashColor: tealColor,
        child: Text(
          text,
          style: TextStyle(
            color: blackColor,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
