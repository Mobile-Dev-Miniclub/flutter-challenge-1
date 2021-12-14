part of 'widgets.dart';

class CustomButtonWhiteBorder extends StatelessWidget {
  final String title, asset1;
  const CustomButtonWhiteBorder({
    Key? key,
    required this.title,
    required this.asset1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: blackColor,
          border: Border.all(color: whiteColor)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            width: 24,
            height: 24,
            child: Image.asset(asset1),
          ),
          Container(
            child: Text(
              title,
              style: boldWhiteRaleway.copyWith(fontSize: 14),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            width: 24,
            height: 24,
          ),
        ],
      ),
    );
  }
}
