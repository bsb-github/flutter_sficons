# Using SFIcon with Symbol Names

This demonstrates how to use the `SFIcon.fromName()` constructor to create icons using Apple's SF Symbol naming convention directly.

## Basic Usage

```dart
import 'package:flutter/material.dart';
import 'package:flutter_sficon/flutter_sficon.dart';

class IconDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Method 1: Using IconData constants (traditional way)
        SFIcon(
          SFIcons.sf_heart_fill,
          fontSize: 32,
          color: Colors.red,
        ),
        
        // Method 2: Using symbol names (new way)
        SFIcon.fromName(
          'heart.fill',
          fontSize: 32,
          color: Colors.red,
        ),
      ],
    );
  }
}
```

## Examples with Various SF Symbols

```dart
// Weather icons
SFIcon.fromName('sun.max.fill', fontSize: 40)
SFIcon.fromName('cloud.bolt.rain.fill', fontSize: 40)
SFIcon.fromName('snow', fontSize: 40)

// System icons
SFIcon.fromName('gear', fontSize: 40)
SFIcon.fromName('bell.fill', fontSize: 40)
SFIcon.fromName('envelope.fill', fontSize: 40)

// Numbers and shapes
SFIcon.fromName('0.circle.fill', fontSize: 40)
SFIcon.fromName('1.square.fill', fontSize: 40)

// Communication
SFIcon.fromName('paperplane.fill', fontSize: 40)
SFIcon.fromName('message.fill', fontSize: 40)
```

## Dynamic Icon Selection

```dart
class DynamicIconExample extends StatelessWidget {
  final String iconName;
  
  const DynamicIconExample({required this.iconName});
  
  @override
  Widget build(BuildContext context) {
    return SFIcon.fromName(
      iconName,
      fontSize: 32,
      color: Theme.of(context).primaryColor,
    );
  }
}

// Usage:
DynamicIconExample(iconName: 'star.fill')
DynamicIconExample(iconName: 'heart.circle.fill')
```

## Advantages

1. **Direct Apple naming**: Use the exact names from SF Symbols catalog
2. **No conversion needed**: No need to convert dots to underscores or add `sf_` prefix
3. **Dynamic**: Perfect for scenarios where icon names come from APIs or user input
4. **Familiar**: Matches Apple's documentation and naming convention

## Note

If an invalid symbol name is provided, the widget will render as an empty space (SizedBox.shrink()) without throwing an error.
