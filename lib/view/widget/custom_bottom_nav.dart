part of 'widgets.dart';

class CustomBottomNavigation extends StatelessWidget {
  final int selectedIndex;
  final Function(int index) onTap;
  const CustomBottomNavigation({
    Key? key,
    required this.onTap,
    required this.selectedIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xFF121212).withOpacity(0.8),
                Color(0xFF121212).withOpacity(1)
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.1, 0.8])),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              onTap(0);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/icon_home' +
                                ((selectedIndex == 0)
                                    ? '_color.png'
                                    : '_nonactive.png'),
                          ),
                          fit: BoxFit.contain)),
                ),
                Container(
                  width: 60,
                  child: Text(
                    'Home',
                    style: bText.copyWith(
                      fontSize: 10,
                      color: ((selectedIndex == 0)) ? whiteColor : greyColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              onTap(1);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/icon_search' +
                                ((selectedIndex == 1)
                                    ? '_color.png'
                                    : '_nonactive.png'),
                          ),
                          fit: BoxFit.contain)),
                ),
                Container(
                  width: 60,
                  child: Text(
                    'Search',
                    style: bText.copyWith(
                      fontSize: 10,
                      color: ((selectedIndex == 1)) ? whiteColor : greyColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              onTap(2);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/icon_library' +
                                ((selectedIndex == 2)
                                    ? '_color.png'
                                    : '_nonactive.png'),
                          ),
                          fit: BoxFit.contain)),
                ),
                Container(
                  width: 60,
                  child: Text(
                    'Your Library',
                    style: bText.copyWith(
                      fontSize: 10,
                      color: ((selectedIndex == 2)) ? whiteColor : greyColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
