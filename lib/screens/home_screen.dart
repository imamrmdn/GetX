part of 'screens.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tealColor,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            //noted: Background
            Column(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    color: tealColor,
                  ),
                ),
                Flexible(
                  flex: 4,
                  child: Container(
                    color: whiteColor,
                    padding: EdgeInsets.only(bottom: 120),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'Learning GetX State Management',
                        style: blackTextFont2,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            //note: List Materi
            Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 130, 30, 315),
                  child: Card(
                    color: tealColor,
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 130, 30, 320),
                  child: Card(
                    elevation: 0,
                    child: Column(
                      children: ListTile.divideTiles(
                        context: context,
                        tiles: listMateri
                            .map((e) => listTile(
                                  '${e.gambar}',
                                  '${e.title}',
                                  '${e.tanggal}',
                                  onTap: e.ontap,
                                ))
                            .toList(),
                      ).toList(),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
