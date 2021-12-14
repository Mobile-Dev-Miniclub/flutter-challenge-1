part of 'pages.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget backgroundContent() {
      return Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFF3E6376), Color(0xFF121212)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.01, 0.2])),
        // color: Color(0xFF181413),
      );
    }

    Widget headerContent() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          left: 16,
          right: 16,
          top: 30,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Text(
                "Good evening",
                style: boldWhiteRaleway.copyWith(fontSize: 22),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 20,
                  margin: EdgeInsets.symmetric(horizontal: 12),
                  child: Image.asset('assets/icon_bell.png'),
                ),
                Container(
                  width: 20,
                  margin: EdgeInsets.symmetric(horizontal: 12),
                  child: Image.asset('assets/icon_recent.png'),
                ),
                Container(
                  width: 20,
                  margin: EdgeInsets.symmetric(horizontal: 12),
                  child: Image.asset('assets/icon_setting.png'),
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget recentListContent() {
      return Container(
        height: 160,
        width: double.infinity,
        margin: EdgeInsets.only(top: 25),
        child: CustomScrollView(
          primary: false,
          slivers: <Widget>[
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              sliver: SliverGrid.count(
                crossAxisSpacing: 8,
                childAspectRatio: 4,
                mainAxisSpacing: 8,
                crossAxisCount: 2,
                children: dataRecent
                    .map(
                      (e) => Padding(
                        padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                        child: CardRecentPlaylistWidget(recentlist: e),
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      );
    }

    Widget recommendedListContent() {
      return Container(
        height: 260,
        width: double.infinity,
        padding: EdgeInsets.all(8),
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            Row(
              children: dataAlbum
                  .map((e) => Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 14, 10),
                        child: AlbumCard(album: e, itemWidth: 0),
                      ))
                  .toList(),
            )
          ],
        ),
      );
    }

    Widget showListContent() {
      return Container(
        height: 260,
        width: double.infinity,
        padding: EdgeInsets.all(8),
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            Row(
              children: dataShow
                  .map((e) => Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 14, 10),
                        child: CardShowPlaylistWidget(
                            popularShow: e, itemWidth: 0),
                      ))
                  .toList(),
            )
          ],
        ),
      );
    }

    Widget artistListContent() {
      return Container(
        height: 260,
        width: double.infinity,
        padding: EdgeInsets.all(8),
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            Row(
              children: dataPopular
                  .map((e) => Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 14, 10),
                        child:
                            PopularArtistCard(popularArtist: e, itemWidth: 0),
                      ))
                  .toList(),
            )
          ],
        ),
      );
    }

    return Scaffold(
        backgroundColor: blackColor,
        body: Stack(
          children: [
            backgroundContent(),
            Container(
              width: double.infinity,
              child: ListView(
                children: [
                  headerContent(),
                  recentListContent(),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Album picks",
                    style: boldWhiteRaleway.copyWith(fontSize: 20),
                  ),
                  recommendedListContent(),
                  Text(
                    "Shows you might like",
                    style: boldWhiteRaleway.copyWith(fontSize: 20),
                  ),
                  showListContent(),
                  Text(
                    "Suggested artists",
                    style: boldWhiteRaleway.copyWith(fontSize: 20),
                  ),
                  artistListContent(),
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
