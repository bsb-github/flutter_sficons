import 'package:flutter_sficon/flutter_sficon.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SFIcons.getIconData', () {
    test('should return IconData for valid symbol names', () {
      expect(SFIcons.getIconData('heart.fill'), isNotNull);
      expect(SFIcons.getIconData('sun.max.fill'), isNotNull);
      expect(SFIcons.getIconData('cloud.bolt.rain.fill'), isNotNull);
      expect(SFIcons.getIconData('0.circle'), isNotNull);
      expect(SFIcons.getIconData('paperplane.fill'), isNotNull);
    });

    test('should return null for invalid symbol names', () {
      expect(SFIcons.getIconData('invalid.symbol.name'), isNull);
      expect(SFIcons.getIconData('nonexistent'), isNull);
    });

    test('should return same IconData as constants', () {
      expect(
        SFIcons.getIconData('heart.fill')?.codePoint,
        equals(SFIcons.sf_heart_fill.codePoint),
      );
      expect(
        SFIcons.getIconData('sun.max.fill')?.codePoint,
        equals(SFIcons.sf_sun_max_fill.codePoint),
      );
    });
  });
}
