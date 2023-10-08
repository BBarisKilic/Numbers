import 'package:flutter/widgets.dart';

/// {@template app_padding}
/// A class that provides constant padding values to use app-wide.
/// {@endtemplate}
final class AppPadding {
  /// {@macro app_padding}
  const AppPadding._();

  /// Returns value of `4.0` as [double].
  static const xSmall = 4.0;

  /// Returns value of `8.0` as [double].
  static const small = 8.0;

  /// Returns value of `12.0` as [double].
  static const medium = 12.0;

  /// Returns value of `20.0` as [double].
  static const large = 20.0;

  /// Returns value of `32.0` as [double].
  static const xLarge = 32.0;

  /// Returns value of `44.0` as [double].
  static const xxLarge = 44.0;

  /// Returns value of `52.0` as [double].
  static const xxxLarge = 52.0;

  /// Returns [EdgeInsets] based on the given `horizontal` and `vertical`
  /// values.
  static EdgeInsets custom({double? horizontal, double? vertical}) =>
      EdgeInsets.symmetric(
        horizontal: horizontal ?? 0.0,
        vertical: vertical ?? 0.0,
      );

  /// Returns [EdgeInsets] in which the horizotal insets are `20.0` and the
  /// vertical insets are `12.0`.
  static EdgeInsets get general =>
      const EdgeInsets.symmetric(horizontal: large, vertical: medium);

  /// Returns [EdgeInsets] in which all edge insets are `4.0`.
  static EdgeInsets get allXSmall => const EdgeInsets.all(xSmall);

  /// Returns [EdgeInsets] in which all edge insets are `8.0`.
  static EdgeInsets get allSmall => const EdgeInsets.all(small);

  /// Returns [EdgeInsets] in which all edge insets are `12.0`.
  static EdgeInsets get allMedium => const EdgeInsets.all(medium);

  /// Returns [EdgeInsets] in which all edge insets are `20.0`.
  static EdgeInsets get allLarge => const EdgeInsets.all(large);

  /// Returns [EdgeInsets] in which all edge insets are `32.0`.
  static EdgeInsets get allXLarge => const EdgeInsets.all(xLarge);

  /// Returns [EdgeInsets] in which all edge insets are `44.0`.
  static EdgeInsets get allXXLarge => const EdgeInsets.all(xxLarge);

  /// Returns [EdgeInsets] in which all edge insets are `52.0`.
  static EdgeInsets get allXXXLarge => const EdgeInsets.all(xxxLarge);

  /// Returns [EdgeInsets] in which the horizontal insets are `4.0`.
  static EdgeInsets get horizontalXSmall =>
      const EdgeInsets.symmetric(horizontal: xSmall);

  /// Returns [EdgeInsets] in which the horizontal insets are `8.0`.
  static EdgeInsets get horizontalSmall =>
      const EdgeInsets.symmetric(horizontal: small);

  /// Returns [EdgeInsets] in which the horizontal insets are `12.0`.
  static EdgeInsets get horizontalMedium =>
      const EdgeInsets.symmetric(horizontal: medium);

  /// Returns [EdgeInsets] in which the horizontal insets are `20.0`.
  static EdgeInsets get horizontalLarge =>
      const EdgeInsets.symmetric(horizontal: large);

  /// Returns [EdgeInsets] in which the horizontal insets are `32.0`.
  static EdgeInsets get horizontalXLarge =>
      const EdgeInsets.symmetric(horizontal: xLarge);

  /// Returns [EdgeInsets] in which the horizontal insets are `44.0`.
  static EdgeInsets get horizontalXXLarge =>
      const EdgeInsets.symmetric(horizontal: xxLarge);

  /// Returns [EdgeInsets] in which the horizontal insets are `52.0`.
  static EdgeInsets get horizontalXXXLarge =>
      const EdgeInsets.symmetric(horizontal: xxxLarge);

  /// Returns [EdgeInsets] in which the vertical insets are `4.0`.
  static EdgeInsets get verticalXSmall =>
      const EdgeInsets.symmetric(vertical: xSmall);

  /// Returns [EdgeInsets] in which the vertical insets are `8.0`.
  static EdgeInsets get verticalSmall =>
      const EdgeInsets.symmetric(vertical: small);

  /// Returns [EdgeInsets] in which the vertical insets are `12.0`.
  static EdgeInsets get verticalMedium =>
      const EdgeInsets.symmetric(vertical: medium);

  /// Returns [EdgeInsets] in which the vertical insets are `20.0`.
  static EdgeInsets get verticalLarge =>
      const EdgeInsets.symmetric(vertical: large);

  /// Returns [EdgeInsets] in which the vertical insets are `32.0`.
  static EdgeInsets get verticalXLarge =>
      const EdgeInsets.symmetric(vertical: xLarge);

  /// Returns [EdgeInsets] in which the vertical insets are `44.0`.
  static EdgeInsets get verticalXXLarge =>
      const EdgeInsets.symmetric(vertical: xxLarge);

  /// Returns [EdgeInsets] in which the vertical insets are `52.0`.
  static EdgeInsets get verticalXXXLarge =>
      const EdgeInsets.symmetric(vertical: xxxLarge);

  /// Returns [EdgeInsets] in which the top inset is `4.0`.
  static EdgeInsets get topXSmall => const EdgeInsets.only(top: xSmall);

  /// Returns [EdgeInsets] in which the top inset is `8.0`.
  static EdgeInsets get topSmall => const EdgeInsets.only(top: small);

  /// Returns [EdgeInsets] in which the top inset is `12.0`.
  static EdgeInsets get topMedium => const EdgeInsets.only(top: medium);

  /// Returns [EdgeInsets] in which the top inset is `20.0`.
  static EdgeInsets get topLarge => const EdgeInsets.only(top: large);

  /// Returns [EdgeInsets] in which the top inset is `32.0`.
  static EdgeInsets get topXLarge => const EdgeInsets.only(top: xLarge);

  /// Returns [EdgeInsets] in which the top inset is `44.0`.
  static EdgeInsets get topXXLarge => const EdgeInsets.only(top: xxLarge);

  /// Returns [EdgeInsets] in which the top inset is `52.0`.
  static EdgeInsets get topXXXLarge => const EdgeInsets.only(top: xxxLarge);

  /// Returns [EdgeInsets] in which the bottom inset is `4.0`.
  static EdgeInsets get bottomXSmall => const EdgeInsets.only(bottom: xSmall);

  /// Returns [EdgeInsets] in which the bottom inset is `8.0`.
  static EdgeInsets get bottomSmall => const EdgeInsets.only(bottom: small);

  /// Returns [EdgeInsets] in which the bottom inset is `12.0`.
  static EdgeInsets get bottomMedium => const EdgeInsets.only(bottom: medium);

  /// Returns [EdgeInsets] in which the bottom inset is `20.0`.
  static EdgeInsets get bottomLarge => const EdgeInsets.only(bottom: large);

  /// Returns [EdgeInsets] in which the bottom inset is `32.0`.
  static EdgeInsets get bottomXLarge => const EdgeInsets.only(bottom: xLarge);

  /// Returns [EdgeInsets] in which the bottom inset is `44.0`.
  static EdgeInsets get bottomXXLarge => const EdgeInsets.only(bottom: xxLarge);

  /// Returns [EdgeInsets] in which the bottom inset is `52.0`.
  static EdgeInsets get bottomXXXLarge =>
      const EdgeInsets.only(bottom: xxxLarge);

  /// Returns [EdgeInsets] in which the left inset is `4.0`.
  static EdgeInsets get leftXSmall => const EdgeInsets.only(left: xSmall);

  /// Returns [EdgeInsets] in which the left inset is `8.0`.
  static EdgeInsets get leftSmall => const EdgeInsets.only(left: small);

  /// Returns [EdgeInsets] in which the left inset is `12.0`.
  static EdgeInsets get leftMedium => const EdgeInsets.only(left: medium);

  /// Returns [EdgeInsets] in which the left inset is `20.0`.
  static EdgeInsets get leftLarge => const EdgeInsets.only(left: large);

  /// Returns [EdgeInsets] in which the left inset is `32.0`.
  static EdgeInsets get leftXLarge => const EdgeInsets.only(left: xLarge);

  /// Returns [EdgeInsets] in which the left inset is `44.0`.
  static EdgeInsets get leftXXLarge => const EdgeInsets.only(left: xxLarge);

  /// Returns [EdgeInsets] in which the left inset is `52.0`.
  static EdgeInsets get leftXXXLarge => const EdgeInsets.only(left: xxxLarge);

  /// Returns [EdgeInsets] in which the right inset is `4.0`.
  static EdgeInsets get rightXSmall => const EdgeInsets.only(right: xSmall);

  /// Returns [EdgeInsets] in which the right inset is `8.0`.
  static EdgeInsets get rightSmall => const EdgeInsets.only(right: small);

  /// Returns [EdgeInsets] in which the right inset is `12.0`.
  static EdgeInsets get rightMedium => const EdgeInsets.only(right: medium);

  /// Returns [EdgeInsets] in which the right inset is `20.0`.
  static EdgeInsets get rightLarge => const EdgeInsets.only(right: large);

  /// Returns [EdgeInsets] in which the right inset is `32.0`.
  static EdgeInsets get rightXLarge => const EdgeInsets.only(right: xLarge);

  /// Returns [EdgeInsets] in which the right inset is `44.0`.
  static EdgeInsets get rightXXLarge => const EdgeInsets.only(right: xxLarge);

  /// Returns [EdgeInsets] in which the right inset is `52.0`.
  static EdgeInsets get rightXXXLarge => const EdgeInsets.only(right: xxxLarge);
}
