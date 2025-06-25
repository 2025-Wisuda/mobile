// import 'package:flutter/material.dart';

// import 'package:mobile/core/constants/color_constant.dart';

// /// Typography theme configuration using Inter font family
// /// Following modern mobile design standards with optimal readability
// ///
// /// Inter font provides excellent readability at small sizes and maintains
// /// professional appearance suitable for academic applications
// class AppTypography {
//   /// Base Inter font family - professional and highly readable
//   static const String fontFamily = 'Inter';

//   /// Light mode typography theme
//   /// Optimized for readability with proper size hierarchy
//   static const TextTheme lightTextTheme = TextTheme(
//     // Display styles - large headings and hero text
//     displayLarge: TextStyle(
//       fontFamily: fontFamily,
//       fontSize: 57,
//       fontWeight: FontWeight.w400,
//       letterSpacing: -0.25,
//       height: 1.12,
//       color: ColorConstant.kNeutral900,
//     ),
//     displayMedium: TextStyle(
//       fontFamily: fontFamily,
//       fontSize: 45,
//       fontWeight: FontWeight.w400,
//       letterSpacing: 0,
//       height: 1.16,
//       color: ColorConstant.kNeutral900,
//     ),
//     displaySmall: TextStyle(
//       fontFamily: fontFamily,
//       fontSize: 36,
//       fontWeight: FontWeight.w400,
//       letterSpacing: 0,
//       height: 1.22,
//       color: ColorConstant.kNeutral900,
//     ),

//     // Headline styles - section headers and page titles
//     headlineLarge: TextStyle(
//       fontFamily: fontFamily,
//       fontSize: 32,
//       fontWeight: FontWeight.w400,
//       letterSpacing: 0,
//       height: 1.25,
//       color: ColorConstant.kNeutral900,
//     ),
//     headlineMedium: TextStyle(
//       fontFamily: fontFamily,
//       fontSize: 28,
//       fontWeight: FontWeight.w400,
//       letterSpacing: 0,
//       height: 1.29,
//       color: ColorConstant.kNeutral900,
//     ),
//     headlineSmall: TextStyle(
//       fontFamily: fontFamily,
//       fontSize: 24,
//       fontWeight: FontWeight.w400,
//       letterSpacing: 0,
//       height: 1.33,
//       color: ColorConstant.kNeutral900,
//     ),

//     // Title styles - component headers and card titles
//     titleLarge: TextStyle(
//       fontFamily: fontFamily,
//       fontSize: 22, // AppBar titles, dialog headers
//       fontWeight: FontWeight.w500,
//       letterSpacing: 0,
//       height: 1.27,
//       color: ColorConstant.kNeutral900,
//     ),
//     titleMedium: TextStyle(
//       fontFamily: fontFamily,
//       fontSize: 16, // Card titles, section headers
//       fontWeight: FontWeight.w500,
//       letterSpacing: 0.15,
//       height: 1.5,
//       color: ColorConstant.kNeutral900,
//     ),
//     titleSmall: TextStyle(
//       fontFamily: fontFamily,
//       fontSize: 14, // Small headers, list titles
//       fontWeight: FontWeight.w500,
//       letterSpacing: 0.1,
//       height: 1.43,
//       color: ColorConstant.kNeutral900,
//     ),

//     // Body styles - main content text
//     bodyLarge: TextStyle(
//       fontFamily: fontFamily,
//       fontSize: 16, // Primary body text, descriptions
//       fontWeight: FontWeight.w400,
//       letterSpacing: 0.15,
//       height: 1.5,
//       color: ColorConstant.kNeutral900,
//     ),
//     bodyMedium: TextStyle(
//       fontFamily: fontFamily,
//       fontSize: 14, // Secondary body text, content
//       fontWeight: FontWeight.w400,
//       letterSpacing: 0.25,
//       height: 1.43,
//       color: ColorConstant.kNeutral900,
//     ),
//     bodySmall: TextStyle(
//       fontFamily: fontFamily,
//       fontSize: 12, // Small body text, captions
//       fontWeight: FontWeight.w400,
//       letterSpacing: 0.4,
//       height: 1.33,
//       color: ColorConstant.kNeutral900,
//     ),

//     // Label styles - buttons, tabs, form labels
//     labelLarge: TextStyle(
//       fontFamily: fontFamily,
//       fontSize: 14, // Button text, tab labels
//       fontWeight: FontWeight.w500,
//       letterSpacing: 0.1,
//       height: 1.43,
//       color: ColorConstant.kNeutral900,
//     ),
//     labelMedium: TextStyle(
//       fontFamily: fontFamily,
//       fontSize: 12, // Small buttons, chip labels
//       fontWeight: FontWeight.w500,
//       letterSpacing: 0.5,
//       height: 1.33,
//       color: ColorConstant.kNeutral900,
//     ),
//     labelSmall: TextStyle(
//       fontFamily: fontFamily,
//       fontSize: 11, // Tiny labels, metadata
//       fontWeight: FontWeight.w500,
//       letterSpacing: 0.5,
//       height: 1.45,
//       color: ColorConstant.kNeutral900,
//     ),
//   );

//   /// Dark mode typography theme
//   /// Maintains same sizing with adjusted contrast for dark backgrounds
//   static const TextTheme darkTextTheme = TextTheme(
//     displayLarge: TextStyle(
//       fontFamily: fontFamily,
//       fontSize: 57,
//       fontWeight: FontWeight.w400,
//       letterSpacing: -0.25,
//       height: 1.12,
//       color: ColorConstant.kNeutral100,
//     ),
//     displayMedium: TextStyle(
//       fontFamily: fontFamily,
//       fontSize: 45,
//       fontWeight: FontWeight.w400,
//       letterSpacing: 0,
//       height: 1.16,
//       color: ColorConstant.kNeutral100,
//     ),
//     displaySmall: TextStyle(
//       fontFamily: fontFamily,
//       fontSize: 36,
//       fontWeight: FontWeight.w400,
//       letterSpacing: 0,
//       height: 1.22,
//       color: ColorConstant.kNeutral100,
//     ),
//     headlineLarge: TextStyle(
//       fontFamily: fontFamily,
//       fontSize: 32,
//       fontWeight: FontWeight.w400,
//       letterSpacing: 0,
//       height: 1.25,
//       color: ColorConstant.kNeutral100,
//     ),
//     headlineMedium: TextStyle(
//       fontFamily: fontFamily,
//       fontSize: 28,
//       fontWeight: FontWeight.w400,
//       letterSpacing: 0,
//       height: 1.29,
//       color: ColorConstant.kNeutral100,
//     ),
//     headlineSmall: TextStyle(
//       fontFamily: fontFamily,
//       fontSize: 24,
//       fontWeight: FontWeight.w400,
//       letterSpacing: 0,
//       height: 1.33,
//       color: ColorConstant.kNeutral100,
//     ),
//     titleLarge: TextStyle(
//       fontFamily: fontFamily,
//       fontSize: 22,
//       fontWeight: FontWeight.w500,
//       letterSpacing: 0,
//       height: 1.27,
//       color: ColorConstant.kNeutral100,
//     ),
//     titleMedium: TextStyle(
//       fontFamily: fontFamily,
//       fontSize: 16,
//       fontWeight: FontWeight.w500,
//       letterSpacing: 0.15,
//       height: 1.5,
//       color: ColorConstant.kNeutral100,
//     ),
//     titleSmall: TextStyle(
//       fontFamily: fontFamily,
//       fontSize: 14,
//       fontWeight: FontWeight.w500,
//       letterSpacing: 0.1,
//       height: 1.43,
//       color: ColorConstant.kNeutral100,
//     ),
//     bodyLarge: TextStyle(
//       fontFamily: fontFamily,
//       fontSize: 16,
//       fontWeight: FontWeight.w400,
//       letterSpacing: 0.15,
//       height: 1.5,
//       color: ColorConstant.kNeutral100,
//     ),
//     bodyMedium: TextStyle(
//       fontFamily: fontFamily,
//       fontSize: 14,
//       fontWeight: FontWeight.w400,
//       letterSpacing: 0.25,
//       height: 1.43,
//       color: ColorConstant.kNeutral100,
//     ),
//     bodySmall: TextStyle(
//       fontFamily: fontFamily,
//       fontSize: 12,
//       fontWeight: FontWeight.w400,
//       letterSpacing: 0.4,
//       height: 1.33,
//       color: ColorConstant.kNeutral100,
//     ),
//     labelLarge: TextStyle(
//       fontFamily: fontFamily,
//       fontSize: 14,
//       fontWeight: FontWeight.w500,
//       letterSpacing: 0.1,
//       height: 1.43,
//       color: ColorConstant.kNeutral100,
//     ),
//     labelMedium: TextStyle(
//       fontFamily: fontFamily,
//       fontSize: 12,
//       fontWeight: FontWeight.w500,
//       letterSpacing: 0.5,
//       height: 1.33,
//       color: ColorConstant.kNeutral100,
//     ),
//     labelSmall: TextStyle(
//       fontFamily: fontFamily,
//       fontSize: 11,
//       fontWeight: FontWeight.w500,
//       letterSpacing: 0.5,
//       height: 1.45,
//       color: ColorConstant.kNeutral100,
//     ),
//   );
// }

// /// Custom text styles for specific use cases
// /// Separated class for specialized typography needs
// class AppCustomStyles {
//   /// Form error text style
//   static TextStyle errorText(ColorScheme colorScheme) => TextStyle(
//         fontFamily: AppTypography.fontFamily,
//         fontSize: 12,
//         fontWeight: FontWeight.w400,
//         color: colorScheme.error,
//         letterSpacing: 0.4,
//         height: 1.33,
//       );

//   /// Form helper text style
//   static TextStyle helperText(ColorScheme colorScheme) => TextStyle(
//         fontFamily: AppTypography.fontFamily,
//         fontSize: 12,
//         fontWeight: FontWeight.w400,
//         color: colorScheme.onSurfaceVariant,
//         letterSpacing: 0.4,
//         height: 1.33,
//       );

//   /// Metadata text (timestamps, status info)
//   static TextStyle metadata(ColorScheme colorScheme) => TextStyle(
//         fontFamily: AppTypography.fontFamily,
//         fontSize: 11,
//         fontWeight: FontWeight.w400,
//         color: colorScheme.onSurfaceVariant.withValues(alpha: 0.7),
//         letterSpacing: 0.5,
//         height: 1.45,
//       );

//   /// Card subtitle text
//   static TextStyle cardSubtitle(ColorScheme colorScheme) => TextStyle(
//         fontFamily: AppTypography.fontFamily,
//         fontSize: 13,
//         fontWeight: FontWeight.w400,
//         color: colorScheme.onSurfaceVariant,
//         letterSpacing: 0.25,
//         height: 1.38,
//       );
// }
