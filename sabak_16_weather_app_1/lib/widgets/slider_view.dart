import 'package:flutter/material.dart';

class SliderView extends StatelessWidget {
  const SliderView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: const EdgeInsets.only(top: 27.6, bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Today',
                style: TextStyle(fontSize: 13.8, fontWeight: FontWeight.w700),
              ),
              Text(
                'Tomorrow',
                style: TextStyle(fontSize: 13.8, fontWeight: FontWeight.w400),
              ),
              Text(
                'Next 7 Days',
                style: TextStyle(fontSize: 13.8, fontWeight: FontWeight.w400),
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 12,
                color: Colors.grey,
              ),
            ],
          ),
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            trackHeight: 0.86, // Слайдердин бийиктиги (ичке кылуу)

            thumbShape: RoundSliderThumbShape(
                enabledThumbRadius: 5, pressedElevation: 5), // Thumb'тун өлчөмү
            overlayShape: RoundSliderOverlayShape(
                overlayRadius: 14), // Hover учурундагы чекиттин радиусу
          ),
          child: Slider(
            activeColor: Colors.black,
            inactiveColor: Colors.black,
            value: 100,
            max: 100,
            divisions: 5,
            label: "Hello",
            onChanged: (double value) {},
          ),
        ),
      ],
    );
  }
}
