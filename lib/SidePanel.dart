//This is the side panel on the left
import 'package:cp77_gpm_ui/util/PageTracker.dart';
import 'package:cp77_gpm_ui/widgets/SidePanelItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class SidePanel extends StatefulWidget {
  SidePanel({Key key}) : super(key: key);

  @override
  _SidePanelState createState() => _SidePanelState();
}

class _SidePanelState extends State<SidePanel>
    with SingleTickerProviderStateMixin {
  double _width = 50;

  Animation<double> _animation;

  AnimationController _controller;

  bool expand = false;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 200));

    _animation = _controller.drive(Tween(begin: 50, end: 150));

    _controller.addListener(() {
      setState(() {
        _width = _animation.value;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      clipBehavior: Clip.hardEdge,
      child: SizedBox(
        width: _width,
        child: Column(
          children: [
            Expanded(
              child: Material(
                color: Theme.of(context).primaryColor,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SidePanelItem(
                      width: _width,
                      text: '',
                      icon: Icon(Icons.menu),
                      event: () {
                        if (!expand) {
                          expand = true;
                          _controller.forward();
                        } else {
                          expand = false;
                          _controller.reverse();
                        }
                      },
                    ),
                    SidePanelItem(
                      width: _width,
                      text: 'Home',
                      icon: Icon(Icons.home),
                      event: () {
                        context.read<PageTracker>().setPage(0);
                      },
                    ),
                    SidePanelItem(
                      width: _width,
                      text: 'Dashboard',
                      icon: Icon(Icons.dashboard),
                      event: () {
                        context.read<PageTracker>().setPage(1);
                      },
                    ),
                    SidePanelItem(
                      width: _width,
                      text: 'Mods',
                      icon: Icon(Icons.add),
                      event: () {
                        context.read<PageTracker>().setPage(2);
                      },
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    SidePanelItem(
                      width: _width,
                      text: 'Settings',
                      icon: Icon(Icons.settings),
                      event: () {
                        context.read<PageTracker>().setPage(3);
                      },
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
