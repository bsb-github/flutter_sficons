# Flutter SFIcon

Render SF Symbols on both platforms simuliar to regular `Icon` widget. Supports weight and latest SF Symbols version 6.0
Icons are tree shakable. Keep in mind, that `SFIcon` widget is based on `Text`.

## Install

add flutter_sf_symbols into your pubspec.yaml

```
flutter pub add flutter_sficon
```

## How to use

For correct use of flutter tree shaking all icons stored inside `SFIcons` class as static constants.

### Method 1: Using IconData constants

Naming convention for retrieving SF symbol is as follows:

1. SF Symbol name is prefixed with 'sf\_'.
2. Dots are replaced with underscores.

Examples:

-   SF Symbol `0.circle` is named as `sf_0_circle`
-   SF Symbol `heart.fill` is named as `sf_heart_fill`

```dart
import 'package:flutter_sficon/flutter_sficon.dart';

// use SFIcon instead of regular Icon widget
const SFIcon(
    SFIcons.sf_heart_fill, // 'heart.fill'
    fontSize: 40, // fontSize instead of size
    fontWeight: FontWeight.bold, // fontWeight instead of weight
    color: Colors.red,
);
```

### Method 2: Using symbol names (Apple SF Symbols naming)

You can also create icons directly by passing the SF Symbol name as provided by Apple:

```dart
import 'package:flutter_sficon/flutter_sficon.dart';

// use SFIcon.fromName with the Apple SF Symbol name
const SFIcon.fromName(
    'heart.fill',  // Direct Apple SF Symbol name
    fontSize: 40,
    fontWeight: FontWeight.bold,
    color: Colors.red,
);

// More examples
const SFIcon.fromName('sun.max.fill', fontSize: 32);
const SFIcon.fromName('cloud.bolt.rain.fill', fontSize: 32);
const SFIcon.fromName('paperplane.fill', fontSize: 32);
```

This approach allows you to use the exact symbol names from Apple's SF Symbols catalog without needing to convert them to the constant naming convention.

## IMPORTANT

All SF Symbols shall be considered to be system-provided images as defined in the Xcode and Apple SDKs license agreements and are subject to the terms and conditions set forth therein. You may not use SF Symbols or glyphs that are substantially or confusingly similar in your app icons, logos, or any other trademark-related use. Apple reserves the right to review and, in its sole discretion, require modification or discontinuance of use of any Symbol used in violation of the foregoing restrictions, and you agree to promptly comply with any such request.

## Notes

This package is inspired by https://github.com/virskor/flutter_sfsymbols. Also thanks for the legal note used here.
