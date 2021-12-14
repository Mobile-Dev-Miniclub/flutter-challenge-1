part of 'widgets.dart';

class PopularArtistCard extends StatelessWidget {
  final PopularArtist popularArtist;
  final double itemWidth;
  PopularArtistCard({
    required this.popularArtist,
    required this.itemWidth,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {},
      child: Container(
        height: 230,
        width: 170,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 160,
              width: 160,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100),
                    bottomLeft: Radius.circular(100),
                    topRight: Radius.circular(100),
                    bottomRight: Radius.circular(100),
                  ),
                  image: DecorationImage(
                      image: NetworkImage(popularArtist.imgPath),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 40,
              child: Column(
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    popularArtist.name,
                    style: bText.copyWith(
                        fontSize: 13, fontWeight: FontWeight.bold),
                    maxLines: 1,
                    overflow: TextOverflow.clip,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
