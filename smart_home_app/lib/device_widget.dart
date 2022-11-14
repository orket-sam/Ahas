import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DeviceWidget extends ConsumerWidget {
  final String title, url;
  final Color color;
  final StateProvider<bool> prov;
  const DeviceWidget(
      {super.key,
      required this.title,
      required this.url,
      required this.prov,
      required this.color});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var isOn = ref.watch(prov);

    return Container(
      decoration: BoxDecoration(
          color: isOn ? Colors.black87.withOpacity(0.2) : Colors.white,
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(
            url,
            width: 90,
            color: isOn ? color : Colors.grey,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('$title.'),
              CupertinoSwitch(
                  value: ref.watch(prov),
                  onChanged: ((value) {
                    ref.read(prov.notifier).state = value;
                  }))
            ],
          ),
        ],
      ),
    );
  }
}
