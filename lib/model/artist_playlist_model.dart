part of 'model.dart';

class PopularArtist extends Equatable {
  final String name;
  final String imgPath;

  PopularArtist({
    this.name = "",
    this.imgPath = "",
  });

  @override
  List<Object> get props => [
        name,
        imgPath,
      ];
}

List<PopularArtist> dataPopular = [
  PopularArtist(
      name: "Billie Eilish",
      imgPath:
          "https://allmusicmagazine.com/wp-content/uploads/2021/05/unnamed.jpeg"),
  PopularArtist(
      name: "CORPSE",
      imgPath:
          "https://i.scdn.co/image/ab6761610000e5ebd47e61698adc0c83530deb06"),
  PopularArtist(
      name: "Jamie Miller",
      imgPath:
          "https://www.atlanticrecords.com/sites/g/files/g2000003466/f/202007/072120_JM-ATL_ArtistPictures_418x268_0.png"),
  PopularArtist(
      name: "Bring Me The Horizon",
      imgPath:
          "https://asset-a.grid.id/crop/0x0:0x0/360x240/photo/2019/10/29/49834291.jpg"),
  PopularArtist(
      name: "ONE OK ROCK",
      imgPath:
          "https://www.oneokrock.com/wp-content/uploads/2021/04/20210304_ONEOKROCK13341_about.jpg"),
  PopularArtist(
      name: "BLACKPINK",
      imgPath:
          "https://static.wikia.nocookie.net/blinks/images/1/19/The_Album_BLACKPINK_profile.jpg/revision/latest/top-crop/width/360/height/450?cb=20201002153613"),
];
