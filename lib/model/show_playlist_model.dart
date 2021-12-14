part of 'model.dart';

class PopularShow extends Equatable {
  final String name;
  final String host;
  final String imgPath;

  PopularShow({
    this.name = "",
    this.host = "",
    this.imgPath = "",
  });

  @override
  List<Object> get props => [
        name,
        host,
        imgPath,
      ];
}

List<PopularShow> dataShow = [
  PopularShow(
      name: "RainyMood",
      host: "Show • Micht91",
      imgPath:
          "https://i1.sndcdn.com/artworks-000086423709-2u7vwn-t500x500.jpg"),
  PopularShow(
      name: "Harry Styles",
      host: "Show • Harry Styles",
      imgPath: "https://www.aceshowbiz.com/images/photo/harry_styles.jpg"),
  PopularShow(
      name: "ASMR Therapy",
      host: "Show • Sound of Solitude",
      imgPath:
          "https://is3-ssl.mzstatic.com/image/thumb/Podcasts115/v4/03/ac/18/03ac1853-0e58-e9e6-e012-f1e8514dbee5/mza_12789248294883307277.jpg/1200x1200bb.jpg"),
  PopularShow(
      name: "Safe place",
      host: "Show • fyz",
      imgPath:
          "https://i.scdn.co/image/ab6765630000ba8a579df3814b538c09e1a9a21d"),
  PopularShow(
      name: "Japanese Lessons",
      host: "Show • Travel Japanese",
      imgPath:
          "https://i.scdn.co/image/ab6765630000ba8a2f9dac31bad931bc54e96003"),
  PopularShow(
      name: "Trash Taste Podcast",
      host: "Show • Trash Taste",
      imgPath:
          "https://xvp.imgix.net/assets/edsv2/static_pages/organic_influencers/trash-taste-803cd85d1525627fee9564eec526352f2e1ccbcd8b544920789deb6e58421f1c.png"),
];
