import 'package:flutter/material.dart';
import 'package:project/core/colors/colors.dart';
import 'package:project/presentation/home/custombuttonwidget.dart';

class Backgroundcard extends StatelessWidget {
  const Backgroundcard({super.key});

  final String mainImage =
      "https://i.pinimg.com/originals/33/e5/db/33e5dbd84db1702df446b195ce049218.jpg";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 450,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(
              image: NetworkImage(mainImage),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButtonWidget(
                  icon: Icons.add,
                  iconcolor: kwhitecolor,
                  iconlabel: "My List",
                ),
                playButton(),
                CustomButtonWidget(
                  icon: Icons.info_outline,
                  iconcolor: kbuttoncolorwhite,
                  iconlabel: "Info",
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class playButton extends StatelessWidget {
  const playButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(
          kwhitecolor,
        ),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3),
          ),
        ),
      ),
      icon: Icon(
        Icons.play_arrow,
        color: Colors.black,
        size: 30,
      ),
      label: Text(
        'Play',
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),
      ),
    );
  }
}
