part of 'widgets.dart';

class CustomButtonGreen extends StatelessWidget {
  final String title;
  const CustomButtonGreen({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25), color: greenColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 20,
          ),
          Container(
            child: Text(
              title,
              style: boldBlackRaleway.copyWith(fontSize: 14),
            ),
          ),
          Container(
            width: 20,
          )
        ],
      ),
    );
  }
}
