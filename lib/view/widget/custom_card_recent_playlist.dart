part of 'widgets.dart';

class CardRecentPlaylistWidget extends StatelessWidget {
  final RecentPlaylist recentlist;
  const CardRecentPlaylistWidget({
    Key? key,
    required this.recentlist,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white24,
        borderRadius: BorderRadius.circular(5),
      ),
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 80,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                ),
                image: DecorationImage(
                    image: AssetImage(recentlist.imgPath), fit: BoxFit.cover),
              )),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  recentlist.name,
                  style: boldWhiteRaleway.copyWith(fontSize: 14),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
