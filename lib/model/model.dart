class SongCover {
  String assetName, name;

  SongCover({
    required this.assetName,
    required this.name,
  });
}

class SongRecommendationCover {
  String assetName, name, desc;

  SongRecommendationCover({
    required this.assetName,
    required this.name,
    required this.desc,
  });
}

List<SongCover> listDummyFreq = [
  SongCover(
    assetName: 'assets/images/Toon.png',
    name: 'Sleepy Rainy LoFi',
  ),
  SongCover(
    assetName: 'assets/images/Night.jpg',
    name: 'Study/Night LoFi',
  ),
  SongCover(
    assetName: 'assets/images/Anime.jpg',
    name: 'Anime Vibes 2021',
  ),
  SongCover(
    assetName: 'assets/images/gaming.jpg',
    name: 'Hard Gaming 2021 Playlist',
  ),
  SongCover(
    assetName: 'assets/images/silent.jpg',
    name: 'Relax LoFi',
  ),
  SongCover(
    assetName: 'assets/images/Metal.jpg',
    name: 'Hard Metal 2019 List',
  ),
];

List<SongRecommendationCover> listDummyTopRec = [
  SongRecommendationCover(
    assetName: 'assets/images/Toon.png',
    name: 'Sleepy Rainy LoFi for Study',
    desc: 'Sleepy song for your sleepy soul',
  ),
  SongRecommendationCover(
    assetName: 'assets/images/Anime.jpg',
    name: 'Anime Nostalgia Series',
    desc: 'Lovely Anime Collection',
  ),
  SongRecommendationCover(
    assetName: 'assets/images/Corpse.PNG',
    name: 'Corpse Husband Horrorcore Playlist',
    desc: 'All Corpse Husband singles',
  ),
];
