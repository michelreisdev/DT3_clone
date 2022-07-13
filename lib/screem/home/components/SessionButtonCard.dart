import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'CardButton.dart';

class SessionButtonCard extends StatelessWidget {
  const SessionButtonCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Wrap(
        children: [
          CardButton('https://dt3-videos-site.s3.amazonaws.com/logoSports-2.png','DT3 SPORT'),
          CardButton('https://dt3-videos-site.s3.amazonaws.com/logoOffice-black.png','DT3 OFFICE'),
          CardButton('https://i.postimg.cc/kXZsg6J8/logo-Racing.png','DT3 RACING'),
        ],
      ),
    );
  }
}