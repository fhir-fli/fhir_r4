import 'package:json_annotation/json_annotation.dart';

enum AccessModifier {
  @JsonValue('Public')
  public,
  @JsonValue('Private')
  private
}

extension AccessModifierExtension on AccessModifier {
  static AccessModifier fromJson(String json) {
    switch (json) {
      case 'Public':
        return AccessModifier.public;
      case 'Private':
        return AccessModifier.private;
      default:
        throw ArgumentError.value(json, 'json', 'Invalid AccessModifier.');
    }
  }
}
