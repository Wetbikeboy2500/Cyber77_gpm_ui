import 'package:flutter/material.dart';

//Wrapper for the content view ot make sure the page starts at the right place
class PageContainer extends StatelessWidget {
  final Widget child;

  const PageContainer({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50),
      child: child,
    );
  }
}
