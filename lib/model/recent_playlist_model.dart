part of 'model.dart';

class RecentPlaylist extends Equatable {
  final String name;
  final String imgPath;

  RecentPlaylist({
    this.name = "",
    this.imgPath = "",
  });

  @override
  List<Object> get props => [
        name,
        imgPath,
      ];
}

List<RecentPlaylist> dataRecent = [
  RecentPlaylist(name: "BMTH", imgPath: "assets/Bmth.jpg"),
  RecentPlaylist(name: "MetalHead", imgPath: "assets/Metal.jpg"),
  RecentPlaylist(name: "Anime", imgPath: "assets/Anime.jpg"),
  RecentPlaylist(name: "LoFi", imgPath: "assets/Toon.png"),
  RecentPlaylist(name: "Corpse", imgPath: "assets/Corpse.PNG"),
  RecentPlaylist(name: "Another", imgPath: "assets/Night.jpg"),
];
