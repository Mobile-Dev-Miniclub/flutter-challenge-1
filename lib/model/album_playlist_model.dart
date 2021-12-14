part of 'model.dart';

class Album extends Equatable {
  final String name;
  final String album;
  final String imgPath;

  Album({
    this.name = "",
    this.album = "",
    this.imgPath = "",
  });

  @override
  List<Object> get props => [
        name,
        album,
        imgPath,
      ];
}

List<Album> dataAlbum = [
  Album(
      name: "Your Name.",
      album: "Album • RADWIMPS",
      imgPath:
          "https://upload.wikimedia.org/wikipedia/en/c/c2/Radwimps_Your_Name_Album_Cover.jpg"),
  Album(
      name: "That's The Spirit",
      album: "Album • Bring Me The Horizon",
      imgPath:
          "https://ravesfromthegrave.com/wp-content/uploads/2020/11/Thats-The-Spirit-.jpg"),
  Album(
      name: "One More Light",
      album: "Album • Linkin Park",
      imgPath:
          "https://upload.wikimedia.org/wikipedia/en/thumb/b/b2/Linkin_Park%2C_One_More_Light%2C_album_art_final.jpeg/220px-Linkin_Park%2C_One_More_Light%2C_album_art_final.jpeg"),
  Album(
      name: "Fantastic Magic",
      album: "Album • TK from Ling tosite sigure",
      imgPath:
          "http://images.genius.com/1c3d7e7f97255cc0153da3d739a43387.496x496x1.jpg"),
  Album(
      name: "BABYMETAL",
      album: "Album • BABYMETAL",
      imgPath:
          "https://res.cloudinary.com/jerrick/image/upload/v1533639447/rio2u5t2gnrqsvmhupb3.jpg"),
  Album(
      name: "LEO-NiNE",
      album: "Album • LiSA",
      imgPath:
          "https://upload.wikimedia.org/wikipedia/en/1/1e/LiSA_-_Leo-Nine_%28Digital_and_Regular_Edition_Cover%29.jpg"),
];
