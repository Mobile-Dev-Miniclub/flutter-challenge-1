part of 'widgets.dart';

class AlbumCard extends StatelessWidget {
  final Album album;
  final double itemWidth;
  AlbumCard({
    required this.album,
    required this.itemWidth,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {},
      child: Container(
        height: 240,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 160,
              width: 160,
              margin: EdgeInsets.only(right: 12),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(album.imgPath), fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 60,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Text(
                    album.name,
                    style: bText.copyWith(
                        fontSize: 13, fontWeight: FontWeight.bold),
                    maxLines: 1,
                    overflow: TextOverflow.clip,
                  ),
                  SizedBox(height: 3),
                  Text(
                    album.album,
                    style: gText.copyWith(
                        fontSize: 12, fontWeight: FontWeight.w400),
                    maxLines: 2,
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
