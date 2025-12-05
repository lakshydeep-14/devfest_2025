import 'package:dev_fest/core/color/colors.dart';
import 'package:dev_fest/core/gen/assets.gen.dart';
import 'package:dev_fest/core/gen/colors.gen.dart';
import 'package:dev_fest/core/images/images.dart';
import 'package:flutter/material.dart';

class Workshop extends StatefulWidget {
  const Workshop({super.key});

  @override
  State<Workshop> createState() => _WorkshopState();
}

class _WorkshopState extends State<Workshop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Column(
        children: [
          // BEFORE
          Image.asset('images/abc.png'),
          Image.asset(AppImage.image1),
          Image.asset(AppImage.image2),
          Container(height: 50, width: 50, color: Color(0xffdecbaa)),

          //AFTER
          Assets.images.abc.image(),
          Image.network(Assets.images.abc.path),
          Assets.images.arrowMix.svg(),
          Assets.images.abc.image(height: 24),
          Image.network(Assets.images.abc.path),
          Assets.images.arrowMix.svg(color: DevFestColor.darkBackground),
        ],
      ),
    );
  }
}
