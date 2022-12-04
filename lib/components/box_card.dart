import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BoxCard extends StatelessWidget {
  final Widget boxContent;
  const BoxCard({Key? key, required this.boxContent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: boxContent,
    );
  }
}
