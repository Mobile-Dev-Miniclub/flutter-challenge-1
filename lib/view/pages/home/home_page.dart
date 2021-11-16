part of '../pages.dart';

class HomePageViews extends StatelessWidget {
  const HomePageViews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('/Home');

    return Scaffold(
      body: SingleChildScrollView(
        clipBehavior: Clip.none,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          height: MediaQuery.of(context).size.height,
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
      childAspectRatio: 2.5,
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

  Widget buildListTopRecommendation() {
    return ListView.builder(
      itemCount: listDummyTopRec.length,
      itemBuilder: (context, index) {
        return Card();
      },
    );
  }
}
