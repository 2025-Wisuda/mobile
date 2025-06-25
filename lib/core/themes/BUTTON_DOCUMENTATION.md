# Button Theme Documentation

## Overview

This document provides comprehensive specifications for all button types in the Flutter lab management system. The button theme supports both light and dark modes with consistent styling, accessibility compliance, and proper state management.

## Button Types

The system includes 6 main button types:
1. **ElevatedButton** - Primary actions (filled background)
2. **TextButton** - Secondary actions (text only)
3. **OutlinedButton** - Alternative actions (outlined)
4. **IconButton** - Icon-based actions
5. **FloatingActionButton** - Primary floating actions
6. **CustomSubmitButtonWidget** - Universal custom button

## Color Specifications

### ElevatedButton (Primary Actions)

| State | Light Theme | Dark Theme |
|-------|-------------|------------|
| **Background (Enabled)** | `kPrimary500` #1E90FF | `kPrimary300` #78BCFF |
| **Background (Disabled)** | `kNeutral300` #D1D1D6 | `kNeutral600` #636366 |
| **Text (Enabled)** | `kNeutral50` #FFFFFF | `kNeutral900` #1C1C1E |
| **Text (Disabled)** | `kNeutral500` #8E8E93 | `kNeutral400` #BCBCC0 |
| **Overlay (Pressed)** | White 15% opacity | Black 15% opacity |

### TextButton (Secondary Actions)

| State | Light Theme | Dark Theme |
|-------|-------------|------------|
| **Background** | `transparent` | `transparent` |
| **Text (Enabled)** | `kPrimary500` #1E90FF | `kPrimary300` #78BCFF |
| **Text (Disabled)** | `kNeutral400` #BCBCC0 | `kNeutral500` #8E8E93 |
| **Overlay (Pressed)** | Primary 10% opacity | Primary 10% opacity |

### OutlinedButton (Alternative Actions)

| State | Light Theme | Dark Theme |
|-------|-------------|------------|
| **Background** | `transparent` | `transparent` |
| **Text (Enabled)** | `kPrimary500` #1E90FF | `kPrimary300` #78BCFF |
| **Text (Disabled)** | `kNeutral400` #BCBCC0 | `kNeutral500` #8E8E93 |
| **Border (Enabled)** | `kPrimary500` #1E90FF | `kPrimary300` #78BCFF |
| **Border (Disabled)** | `kNeutral300` #D1D1D6 | `kNeutral600` #636366 |
| **Overlay (Pressed)** | Primary 10% opacity | Primary 10% opacity |

### IconButton

| State | Light Theme | Dark Theme |
|-------|-------------|------------|
| **Background** | `transparent` | `transparent` |
| **Icon (Enabled)** | `kNeutral700` #48484A | `kNeutral200` #E5E5EA |
| **Icon (Disabled)** | `kNeutral400` #BCBCC0 | `kNeutral500` #8E8E93 |
| **Overlay (Pressed)** | Neutral 10% opacity | Neutral 10% opacity |

### FloatingActionButton

| State | Light Theme | Dark Theme |
|-------|-------------|------------|
| **Background** | `kPrimary500` #1E90FF | `kPrimary300` #78BCFF |
| **Icon** | `kNeutral50` #FFFFFF | `kNeutral900` #1C1C1E |
| **Splash** | White 15% opacity | Black 15% opacity |

## Typography Specifications

### Font Configuration

| Property | Value |
|----------|-------|
| **Font Family** | Inter |
| **Font Size** | 14sp (labelLarge) |
| **Font Weight** | Medium (500) |
| **Letter Spacing** | 0.1 |
| **Line Height** | 1.43 |

## Layout Specifications

### Size Configuration

| Button Type | Min Width | Min Height | Padding |
|-------------|-----------|------------|---------|
| **ElevatedButton** | 64px | 44px | 20px horizontal, 12px vertical |
| **TextButton** | 64px | 44px | 16px horizontal, 12px vertical |
| **OutlinedButton** | 64px | 44px | 20px horizontal, 12px vertical |
| **IconButton** | 44px | 44px | 10px all around |
| **FloatingActionButton** | 56px | 56px | Default Material sizing |

### Border Radius

| Button Type | Border Radius |
|-------------|---------------|
| **ElevatedButton** | 22px (pill shape) |
| **TextButton** | 22px (pill shape) |
| **OutlinedButton** | 22px (pill shape) |
| **IconButton** | 8px (rounded rectangle) |
| **FloatingActionButton** | 16px (rounded rectangle) |

## CustomSubmitButtonWidget

### Button Type Variants

| Type | Description | Use Case |
|------|-------------|----------|
| `elevated` | Filled background button | Primary actions, form submissions |
| `outlined` | Outlined button | Secondary actions, cancel operations |
| `text` | Text-only button | Tertiary actions, navigation |
| `filled` | Material 3 filled button | Alternative primary actions |
| `filledTonal` | Material 3 tonal button | Medium emphasis actions |

### Custom Disabled States

| Theme | Background | Text | Behavior |
|-------|------------|------|----------|
| **Light** | Primary 30% opacity | onSurface 30% opacity | Maintains visual hierarchy |
| **Dark** | Primary 30% opacity | onSurface 30% opacity | Adjusted for dark backgrounds |

## Usage Examples

### Basic Button Types

```dart
// Primary action
ElevatedButton(
  onPressed: () => _submit(),
  child: Text("Submit"),
)

// Secondary action
TextButton(
  onPressed: () => _cancel(),
  child: Text("Cancel"),
)

// Alternative action
OutlinedButton(
  onPressed: () => _reset(),
  child: Text("Reset"),
)
```

### CustomSubmitButtonWidget Examples

```dart
// Primary submit button
CustomSubmitButtonWidget(
  onPressed: _handleSubmit,
  textButton: "Create Account",
  isFormValid: _formKey.currentState?.validate() ?? false,
  buttonType: CustomButtonType.elevated,
)

// Secondary button
CustomSubmitButtonWidget(
  onPressed: _handleCancel,
  textButton: "Cancel",
  isFormValid: true,
  buttonType: CustomButtonType.outlined,
)

// Loading state
CustomSubmitButtonWidget(
  onPressed: _isLoading ? null : _handleSubmit,
  textButton: "Processing...",
  isFormValid: true,
  state: _isLoading ? SubmitStateEnum.loading : SubmitStateEnum.initial,
)
```

## Accessibility Features

### Touch Targets

| Property | Value | Purpose |
|----------|-------|---------|
| **Minimum Size** | 44x44px | Meets WCAG 2.1 AA touch target requirements |
| **Padding** | 12px vertical min | Comfortable interaction area |
| **Spacing** | 8px between buttons | Prevents accidental taps |

### Color Contrast

| State | Light Theme Ratio | Dark Theme Ratio |
|-------|-------------------|------------------|
| **Enabled Text** | 4.5:1 or higher | 4.5:1 or higher |
| **Disabled Text** | 3:1 or higher | 3:1 or higher |
| **Focus Indicators** | 3:1 or higher | 3:1 or higher |

### Focus and States

| State | Visual Indicator | Behavior |
|-------|------------------|----------|
| **Focus** | Outline ring | Keyboard navigation support |
| **Pressed** | Overlay color | Visual feedback |
| **Disabled** | Reduced opacity | Clear non-interactive state |
| **Loading** | Progress indicator | Clear processing state |

## Animation Specifications

### Transition Timing

| Property | Duration | Curve |
|----------|----------|-------|
| **State Changes** | 150ms | Material standard |
| **Ripple Effect** | 300ms | Material standard |
| **Loading States** | Immediate | No transition |

### Splash Factory

| Button Type | Splash Type | Purpose |
|-------------|-------------|---------|
| **All Buttons** | NoSplash | Clean, modern interaction without ripple |
| **Overlay Color** | 10-15% opacity | Subtle press indication |

## Design Principles

### 1. Consistency
- Unified styling across all button types
- Consistent spacing and sizing
- Predictable behavior patterns

### 2. Hierarchy
- Primary: ElevatedButton (highest emphasis)
- Secondary: OutlinedButton (medium emphasis)
- Tertiary: TextButton (lowest emphasis)

### 3. Accessibility
- WCAG 2.1 AA compliant color contrast
- Adequate touch targets (44px minimum)
- Clear focus indicators
- Semantic button roles

### 4. Responsiveness
- Optimized for both light and dark themes
- Automatic theme switching support
- Consistent visual weight across themes

## Implementation Notes

### Theme Integration

```dart
// Apply button themes in main theme
theme: ThemeData(
  elevatedButtonTheme: ButtonThemeX.kElevatedButtonThemeLight,
  textButtonTheme: ButtonThemeX.kTextButtonThemeLight,
  outlinedButtonTheme: ButtonThemeX.kOutlinedButtonThemeLight,
  iconButtonTheme: ButtonThemeX.kIconButtonThemeLight,
  floatingActionButtonTheme: ButtonThemeX.kFloatingActionButtonThemeLight,
)
```

### Custom Overrides

When using CustomSubmitButtonWidget, custom colors can override theme defaults:

```dart
CustomSubmitButtonWidget(
  backgroundColor: CustomColors.successGreen,
  disabledBackgroundColor: CustomColors.successGreen.withOpacity(0.3),
  textColor: Colors.white,
  // ... other properties
)
```

## Related Files

- `mobile/lib/core/themes/button_theme.dart` - Theme definitions
- `mobile/lib/core/constants/color_constant.dart` - Color values
- `mobile/lib/core/constants/text_style_constant.dart` - Typography
- `mobile/lib/shared/widgets/button/` - Button widget implementations 