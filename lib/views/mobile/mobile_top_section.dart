import 'package:flutter/material.dart';
import '../../utils/constants.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/title_text.dart';

class MobileTopSection extends StatelessWidget {
  const MobileTopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
      children:[
        const TitleText(
          text: 'Hi, I\'m \nMuhammad Jawad',
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
        Row(
          children: [
            const Expanded(child:
            CustomText(
              text: 'I build value through design.',
              fontSize: 30,
            ),),
            Expanded(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.network(Constants.profileImage))),
          ],
        ),
        const CustomText(
          text:
          'I\'m a Pakistani who loves building digital products.',
          fontSize: 18,
        ),
        const TitleText(
          text: 'Learn more >',
          fontSize: 18,
        ),
      ]
    );
  }
}
