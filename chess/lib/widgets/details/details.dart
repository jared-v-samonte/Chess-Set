
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:chess/widgets/center/center_view.dart';


class Details extends StatelessWidget
{
  const Details({Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) 
  {
    return ResponsiveBuilder(builder: (context, sizingInformation) 
    {
      var textAlignment =
          sizingInformation.deviceScreenType == DeviceScreenType.Desktop
              ? TextAlign.left
              : TextAlign.center;

      double titleSize =
          sizingInformation.deviceScreenType == DeviceScreenType.Mobile
              ? 50
              : 80;
      double descriptionSize = sizingInformation.deviceScreenType == DeviceScreenType.Mobile ?
      16 : 21;
      return Container
      (
        width: 700,
        height: 400,
        child: Column
        (
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>
          [
            Text
            (
              'Jared Vidal\nSamonte',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                height: 0.9,
                fontSize: titleSize,
              ),
              textAlign: textAlignment,
            ),
            const SizedBox
            (
              height: 30,
            ),
            Text
            (
              'Insert information about Me, Myself, and I lol. Also I need to enter about projects and Comp Sci fields I am into.',
              style: TextStyle(
                fontSize: descriptionSize,
                height: 1.7,
              ),
              textAlign: textAlignment,
            )
          ],
        ),
      );
    });
  }
}