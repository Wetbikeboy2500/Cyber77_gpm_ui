import 'package:flutter/material.dart';

class SidePanelItem extends StatelessWidget {
  final double width;
  final String text;
  final Icon icon;
  final Function event;

  const SidePanelItem({Key key, this.width, this.text, this.icon, this.event})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 50,
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              child: icon,
            ),
            (width > 50)
                ? Expanded(
                    child: Text(
                      text,
                      maxLines: 1,
                      overflow: TextOverflow.clip,
                      softWrap: false,
                    ),
                  )
                : Container(),
          ],
        ),
      ),
      onTap: event,
    );
  }
}
