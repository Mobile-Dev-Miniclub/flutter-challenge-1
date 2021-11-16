import 'package:flutter/material.dart';
import 'package:spotify_clone/view/theme/themes.dart';

class CardFrequentViews extends StatelessWidget {
  final String assetName, name;

  const CardFrequentViews({
    Key? key,
    required this.assetName,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: false,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: 180,
        height: 72,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Themes.darkColor2,
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 8),
          child: buildCardComponent(assetName, name),
        ),
      ),
    );
  }

  Widget buildCardComponent(String asset, String name) => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8),
              bottomLeft: Radius.circular(8),
            ),
            child: Image(
              image: AssetImage(asset),
              fit: BoxFit.cover,
              width: 60,
              height: 60,
            ),
          ),
          SizedBox(width: 10),
          Flexible(
            child: Text(
              name,
              softWrap: true,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
        ],
      );
}
