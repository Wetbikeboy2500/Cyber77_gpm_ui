import 'package:cp77_gpm_ui/widgets/PageContainer.dart';
import 'package:cp77_gpm_ui/widgets/PageHeader.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return PageContainer(
      child: Column(
        children: [
          PageHeader(name: 'Dashboard'),
        ],
      ),
    );
  }
}
