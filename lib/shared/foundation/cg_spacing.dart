import 'package:flutter/material.dart';

/// CG Spacing System
///
/// 4px grid-based spacing tokens for consistent visual rhythm.
/// Provides spacing constants, padding utilities, and border radius system.
class CGSpacing {
  CGSpacing._(); // Private constructor - this is a utility class

  // ===================================================================
  // SPACING SYSTEM
  // ===================================================================
  // 4px grid-based spacing tokens for consistent visual rhythm

  /// No spacing (0px) - Remove all spacing
  /// Use for: Eliminating default spacing, flush layouts, overlapping elements
  static const double s0 = 0;

  /// Micro spacing (2px) - Hairline adjustments
  /// Use for: Border offsets, fine-tuning pixel alignment, focus indicators
  static const double s2 = 2;

  /// Extra small spacing (4px) - Minimal visual separation
  /// Use for: Icon-text gaps, tight component spacing, chip padding
  static const double s4 = 4;

  /// Small spacing (8px) - Close relationship
  /// Use for: Related element gaps, list item internal spacing, form field groups
  static const double s8 = 8;

  /// Medium-small spacing (12px) - Moderate separation
  /// Use for: Card content padding, comfortable but close spacing
  static const double s12 = 12;

  /// Medium spacing (16px) - BASE UNIT - Standard spacing
  /// Use for: Default padding, standard content gaps, comfortable spacing
  static const double s16 = 16;

  /// Medium-large spacing (20px) - Generous but controlled
  /// Use for: Section internal spacing, comfortable content separation
  static const double s20 = 20;

  /// Large spacing (24px) - Clear visual separation
  /// Use for: Card padding, content section gaps, page element margins
  static const double s24 = 24;

  /// Extra large spacing (32px) - Major visual breaks
  /// Use for: Section separators, content area boundaries, layout divisions
  static const double s32 = 32;

  /// Extra extra large spacing (40px) - Significant separation
  /// Use for: Major layout spacing, hero section internal gaps
  static const double s40 = 40;

  /// Huge spacing (48px) - Strong visual hierarchy
  /// Use for: Page section separators, major content boundaries
  static const double s48 = 48;

  /// Massive spacing (64px) - Major layout divisions
  /// Use for: Page-level spacing, distinct content area separation
  static const double s64 = 64;

  /// Enormous spacing (80px) - Landing page scale
  /// Use for: Hero sections, marketing page spacing, major visual impact
  static const double s80 = 80;

  /// Giant spacing (96px) - Maximum standard spacing
  /// Use for: Major page sections, landing page elements, maximum standard gap
  static const double s96 = 96;

  // ===================================================================
  // SEMANTIC SPACING SYSTEM
  // ===================================================================
  // Intuitive spacing names for better developer experience

  /// Extra Small spacing (4px) - Minimal gaps
  /// Use for: Icon-text gaps, tight component spacing, fine adjustments
  static const double xs = s4;

  /// Small spacing (8px) - Close relationships
  /// Use for: Related elements, internal component spacing, subtle gaps
  static const double sm = s8;

  /// Medium spacing (16px) - Standard comfortable spacing
  /// Use for: Default padding, content gaps, standard layouts
  static const double md = s16;

  /// Large spacing (24px) - Clear separation
  /// Use for: Card padding, section gaps, component margins
  static const double lg = s24;

  /// Extra Large spacing (32px) - Major visual breaks
  /// Use for: Section separators, layout divisions, hero spacing
  static const double xl = s32;

  /// Extra Extra Large spacing (48px) - Strong hierarchy
  /// Use for: Page sections, major boundaries, significant gaps
  static const double xxl = s48;

  // ===================================================================
  // PADDING UTILITIES
  // ===================================================================
  // Pre-built EdgeInsets for common padding scenarios

  // All-sides padding - Equal padding on all sides
  static EdgeInsets get p0 => EdgeInsets.all(s0);
  static EdgeInsets get p2 => EdgeInsets.all(s2);
  static EdgeInsets get p4 => EdgeInsets.all(s4);
  static EdgeInsets get p8 => EdgeInsets.all(s8);
  static EdgeInsets get p12 => EdgeInsets.all(s12);
  static EdgeInsets get p16 => EdgeInsets.all(s16);
  static EdgeInsets get p20 => EdgeInsets.all(s20);
  static EdgeInsets get p24 => EdgeInsets.all(s24);
  static EdgeInsets get p32 => EdgeInsets.all(s32);
  static EdgeInsets get p40 => EdgeInsets.all(s40);
  static EdgeInsets get p48 => EdgeInsets.all(s48);
  static EdgeInsets get p64 => EdgeInsets.all(s64);

  // Horizontal padding - Left and right sides only
  static EdgeInsets get px0 => EdgeInsets.symmetric(horizontal: s0);
  static EdgeInsets get px2 => EdgeInsets.symmetric(horizontal: s2);
  static EdgeInsets get px4 => EdgeInsets.symmetric(horizontal: s4);
  static EdgeInsets get px8 => EdgeInsets.symmetric(horizontal: s8);
  static EdgeInsets get px12 => EdgeInsets.symmetric(horizontal: s12);
  static EdgeInsets get px16 => EdgeInsets.symmetric(horizontal: s16);
  static EdgeInsets get px20 => EdgeInsets.symmetric(horizontal: s20);
  static EdgeInsets get px24 => EdgeInsets.symmetric(horizontal: s24);
  static EdgeInsets get px32 => EdgeInsets.symmetric(horizontal: s32);
  static EdgeInsets get px40 => EdgeInsets.symmetric(horizontal: s40);

  // Vertical padding - Top and bottom sides only
  static EdgeInsets get py0 => EdgeInsets.symmetric(vertical: s0);
  static EdgeInsets get py2 => EdgeInsets.symmetric(vertical: s2);
  static EdgeInsets get py4 => EdgeInsets.symmetric(vertical: s4);
  static EdgeInsets get py6 => EdgeInsets.symmetric(vertical: 6.0);
  static EdgeInsets get py8 => EdgeInsets.symmetric(vertical: s8);
  static EdgeInsets get py12 => EdgeInsets.symmetric(vertical: s12);
  static EdgeInsets get py16 => EdgeInsets.symmetric(vertical: s16);
  static EdgeInsets get py20 => EdgeInsets.symmetric(vertical: s20);
  static EdgeInsets get py24 => EdgeInsets.symmetric(vertical: s24);
  static EdgeInsets get py32 => EdgeInsets.symmetric(vertical: s32);
  static EdgeInsets get py40 => EdgeInsets.symmetric(vertical: s40);

  // Directional padding - Individual sides

  // Top padding only
  static EdgeInsets get pt0 => EdgeInsets.only(top: s0);
  static EdgeInsets get pt4 => EdgeInsets.only(top: s4);
  static EdgeInsets get pt8 => EdgeInsets.only(top: s8);
  static EdgeInsets get pt12 => EdgeInsets.only(top: s12);
  static EdgeInsets get pt16 => EdgeInsets.only(top: s16);
  static EdgeInsets get pt20 => EdgeInsets.only(top: s20);
  static EdgeInsets get pt24 => EdgeInsets.only(top: s24);
  static EdgeInsets get pt32 => EdgeInsets.only(top: s32);
  static EdgeInsets get pt40 => EdgeInsets.only(top: s40);

  // Bottom padding only
  static EdgeInsets get pb0 => EdgeInsets.only(bottom: s0);
  static EdgeInsets get pb4 => EdgeInsets.only(bottom: s4);
  static EdgeInsets get pb8 => EdgeInsets.only(bottom: s8);
  static EdgeInsets get pb12 => EdgeInsets.only(bottom: s12);
  static EdgeInsets get pb16 => EdgeInsets.only(bottom: s16);
  static EdgeInsets get pb20 => EdgeInsets.only(bottom: s20);
  static EdgeInsets get pb24 => EdgeInsets.only(bottom: s24);
  static EdgeInsets get pb32 => EdgeInsets.only(bottom: s32);
  static EdgeInsets get pb40 => EdgeInsets.only(bottom: s40);

  // Left padding only
  static EdgeInsets get pl0 => EdgeInsets.only(left: s0);
  static EdgeInsets get pl4 => EdgeInsets.only(left: s4);
  static EdgeInsets get pl8 => EdgeInsets.only(left: s8);
  static EdgeInsets get pl12 => EdgeInsets.only(left: s12);
  static EdgeInsets get pl16 => EdgeInsets.only(left: s16);
  static EdgeInsets get pl20 => EdgeInsets.only(left: s20);
  static EdgeInsets get pl24 => EdgeInsets.only(left: s24);
  static EdgeInsets get pl32 => EdgeInsets.only(left: s32);

  // Right padding only
  static EdgeInsets get pr0 => EdgeInsets.only(right: s0);
  static EdgeInsets get pr4 => EdgeInsets.only(right: s4);
  static EdgeInsets get pr8 => EdgeInsets.only(right: s8);
  static EdgeInsets get pr12 => EdgeInsets.only(right: s12);
  static EdgeInsets get pr16 => EdgeInsets.only(right: s16);
  static EdgeInsets get pr20 => EdgeInsets.only(right: s20);
  static EdgeInsets get pr24 => EdgeInsets.only(right: s24);
  static EdgeInsets get pr32 => EdgeInsets.only(right: s32);

  // Semantic Padding Utilities - More intuitive naming
  static EdgeInsets get pXs => EdgeInsets.all(xs);
  static EdgeInsets get pSm => EdgeInsets.all(sm);
  static EdgeInsets get pMd => EdgeInsets.all(md);
  static EdgeInsets get pLg => EdgeInsets.all(lg);
  static EdgeInsets get pXl => EdgeInsets.all(xl);
  static EdgeInsets get pXxl => EdgeInsets.all(xxl);

  // Semantic Horizontal Padding
  static EdgeInsets get pxXs => EdgeInsets.symmetric(horizontal: xs);
  static EdgeInsets get pxSm => EdgeInsets.symmetric(horizontal: sm);
  static EdgeInsets get pxMd => EdgeInsets.symmetric(horizontal: md);
  static EdgeInsets get pxLg => EdgeInsets.symmetric(horizontal: lg);
  static EdgeInsets get pxXl => EdgeInsets.symmetric(horizontal: xl);

  // Semantic Vertical Padding
  static EdgeInsets get pyXs => EdgeInsets.symmetric(vertical: xs);
  static EdgeInsets get pySm => EdgeInsets.symmetric(vertical: sm);
  static EdgeInsets get pyMd => EdgeInsets.symmetric(vertical: md);
  static EdgeInsets get pyLg => EdgeInsets.symmetric(vertical: lg);
  static EdgeInsets get pyXl => EdgeInsets.symmetric(vertical: xl);

  // ===================================================================
  // BORDER RADIUS SYSTEM
  // ===================================================================
  // Consistent corner rounding for different UI elements

  /// Sharp corners (0px) - No rounding
  /// Use for: Sharp, modern designs, data tables, technical interfaces
  static BorderRadius get r0 => BorderRadius.circular(0);

  /// Minimal rounding (2px) - Subtle corner softening
  /// Use for: Buttons, input fields where sharp is too harsh but minimal rounding desired
  static BorderRadius get r2 => BorderRadius.circular(2);

  /// Small rounding (4px) - Standard small elements
  /// Use for: Buttons, chips, badges, small interactive elements
  static BorderRadius get r4 => BorderRadius.circular(4);

  /// Medium rounding (8px) - Standard interactive elements
  /// Use for: Buttons, input fields, small cards, standard UI elements
  static BorderRadius get r8 => BorderRadius.circular(8);

  /// Large rounding (12px) - Cards and containers
  /// Use for: Cards, modals, containers, elevated surfaces
  static BorderRadius get r12 => BorderRadius.circular(12);

  /// Extra large rounding (16px) - Prominent surfaces
  /// Use for: Large cards, sheets, prominent containers
  static BorderRadius get r16 => BorderRadius.circular(16);

  /// Huge rounding (20px) - Hero elements
  /// Use for: Hero cards, special containers, standout elements
  static BorderRadius get r20 => BorderRadius.circular(20);

  /// Massive rounding (24px) - Major surfaces
  /// Use for: Bottom sheets, large modals, major UI surfaces
  static BorderRadius get r24 => BorderRadius.circular(24);

  /// Circular rounding (999px) - Fully rounded
  /// Use for: Circular buttons, avatars, pills, fully rounded elements
  static BorderRadius get rFull => BorderRadius.circular(999);

  // ===================================================================
  // SEMANTIC BORDER RADIUS SYSTEM
  // ===================================================================
  // Intuitive border radius names for better UX

  /// Extra Small radius (4px) - Subtle rounding
  /// Use for: Small elements, minimal visual softening
  static BorderRadius get rXs => r4;

  /// Small radius (8px) - Standard component rounding
  /// Use for: Buttons, cards, input fields, common components
  static BorderRadius get rSm => r8;

  /// Medium radius (12px) - Comfortable rounding
  /// Use for: Cards, containers, moderate visual appeal
  static BorderRadius get rMd => r12;

  /// Large radius (16px) - Pronounced rounding
  /// Use for: Feature cards, prominent containers, modern aesthetic
  static BorderRadius get rLg => r16;

  /// Extra Large radius (20px) - Strong rounding
  /// Use for: Hero cards, special containers, distinctive elements
  static BorderRadius get rXl => r20;

  /// Pill/Full radius (999px) - Complete rounding
  /// Use for: Pills, badges, circular buttons, capsule shapes
  static BorderRadius get rPill => rFull;
}
