import 'package:flutter/material.dart';

class CardRecommendationViews extends StatelessWidget {
  final String assetName, title, desc;

  const CardRecommendationViews({
    Key? key,
    required this.assetName,
    required this.title,
    required this.desc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: AssetImage(assetName),
            fit: BoxFit.cover,
            width: 140,
            height: 140,
          ),
          SizedBox(height: 8),
          Text(
            title,
            maxLines: 1,
            textAlign: TextAlign.start,
            softWrap: true,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 8),
          Text(
            desc,
            maxLines: 1,
            textAlign: TextAlign.start,
            softWrap: true,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
