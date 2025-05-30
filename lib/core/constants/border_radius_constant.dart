// Flutter imports:
import 'package:flutter/widgets.dart';

class BorderRadiusConstant {
  static BorderRadius kDefaultBorderRadius = BorderRadius.circular(8);
  static BorderRadius kDefaultBorderRadiusSmall = BorderRadius.circular(4);
  static BorderRadius kDefaultBorderRadiusLarge = BorderRadius.circular(16);
  static BorderRadius kDefaultBorderRadiusCircle = BorderRadius.circular(100);
  static BorderRadius kDefaultBorderRadiusTopLeft = BorderRadius.only(
    topLeft: Radius.circular(8),
  );
  static BorderRadius kDefaultBorderRadiusTopRight = BorderRadius.only(
    topRight: Radius.circular(8),
  );
  static BorderRadius kDefaultBorderRadiusBottomLeft = BorderRadius.only(
    bottomLeft: Radius.circular(8),
  );
  static BorderRadius kDefaultBorderRadiusBottomRight = BorderRadius.only(
    bottomRight: Radius.circular(8),
  );
  static BorderRadius kDefaultBorderRadiusTop = BorderRadius.only(
    topLeft: Radius.circular(8),
    topRight: Radius.circular(8),
  );
  static BorderRadius kDefaultBorderRadiusBottom = BorderRadius.only(
    bottomLeft: Radius.circular(8),
    bottomRight: Radius.circular(8),
  );
  static BorderRadius kDefaultBorderRadiusLeft = BorderRadius.only(
    bottomLeft: Radius.circular(8),
    topLeft: Radius.circular(8),
  );
  static BorderRadius kDefaultBorderRadiusRight = BorderRadius.only(
    bottomRight: Radius.circular(8),
    topRight: Radius.circular(8),
  );
}
