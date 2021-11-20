part of '../pages.dart';

class HomePageViews extends StatelessWidget {
  const HomePageViews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('/Home');

    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Themes.brownColor,
                Themes.darkColor,
                Colors.black,
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 26),
              buildContainerHomeAppbar(context),
              buildListFrequenceGrid(),
              buildListArtistTopRecommendation(context),
              SizedBox(height: 24),
              buildListTopRecommendation(context),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavHome(),
    );
  }

  Row buildRowActions() => Row(
        children: [
          Image.asset('assets/images/icon_bell.png', width: 24),
          SizedBox(width: 24),
          Icon(Icons.history, color: Colors.white, size: 26),
          SizedBox(width: 24),
          Image.asset('assets/images/icon_setting.png', width: 24),
        ],
      );

  Container buildContainerHomeAppbar(BuildContext context) => Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(top: 32),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Good evening',
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            buildRowActions(),
          ],
        ),
      );

  Widget buildListFrequenceGrid() {
    return GridView.count(
      shrinkWrap: true,
      childAspectRatio: 2.7,
      crossAxisCount: 2,
      mainAxisSpacing: 1,
      crossAxisSpacing: 5.5,
      children: List.generate(
        listDummyFreq.length,
        (index) {
          print('total ${listDummyFreq.length}');

          return CardFrequentViews(
            assetName: listDummyFreq[index].assetName,
            name: listDummyFreq[index].name,
          );
        },
      ),
    );
  }

  Widget buildListTopRecommendation(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Made For Andzzz',
          style: TextStyle(
            color: Colors.white,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 220,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: listDummyTopRec.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.only(top: 8, right: 16),
                child: CardRecommendationViews(
                  assetName: listDummyTopRec[index].assetName,
                  title: listDummyTopRec[index].name,
                  desc: listDummyTopRec[index].desc,
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget buildListArtistTopRecommendation(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 24,
              backgroundImage: AssetImage('assets/images/Corpse.PNG'),
            ),
            SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'MORE LIKE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Corpse',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 8),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 220,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: listDummyTopRec.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.only(top: 8, right: 16),
                child: CardRecommendationViews(
                  assetName: listDummyTopRec[index].assetName,
                  title: listDummyTopRec[index].name,
                  desc: listDummyTopRec[index].desc,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
