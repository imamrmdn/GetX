part of '../screens.dart';

class Materi2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Example'),
      ),
      body: SafeArea(
        minimum: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Section 1 Materi Navigation',
              style: poppinsStyle.copyWith(
                color: tealColor,
                fontSize: 22,
              ),
            ),
            Text(
              'Mempelajari menggunakan navigasi dengan GetX.',
              style: blackTextFont,
            ),
            SizedBox(height: 20),
            Text(
              'Data dari Home Screen:',
              style: blackTextFont,
            ),
            Column(
              children: [
                Text('${Get.arguments.toString()}'),
              ],
            ),
            SizedBox(height: 50),
            FlatButton(
              color: tealColor,
              padding: EdgeInsets.all(15),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              onPressed: () {
                Get.offAllNamed('/');
              },
              child: Text(
                'Kembali ke List Materi',
                style: whiteTextFont,
              ),
            )
          ],
        ),
      ),
    );
  }
}
