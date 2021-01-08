import 'package:flutter/material.dart';
import 'package:chess/widgets/center/center_view.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:chess/widgets/navigation_bar/bar.dart';
import 'package:chess/services/navigation_service.dart';
import 'package:chess/route/names.dart';
import 'package:chess/route/router.dart';
import 'package:chess/locator.dart';


class LayoutTemplate extends StatelessWidget 
{
  const LayoutTemplate({Key key}) : super(key: key);
  
@override
  Widget build(BuildContext context) 
  {
    return ResponsiveBuilder
    (
      builder: (context, sizingInformation) => Scaffold
      (
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? const Drawer()
            : null,
        backgroundColor: Colors.white,
        body: CenterBox
        (
          child: Column
          (
            children: <Widget>
            [
              const Bar(),
              Expanded
              (
                child: Navigator
                (
                  key: locator<NavigationService>().navigatorKey,
                  onGenerateRoute: generateRoute,
                  initialRoute: HomeRoute,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}