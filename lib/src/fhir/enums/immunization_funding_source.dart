import 'package:json_annotation/json_annotation.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the source of the vaccine administered. This value set is provided as a suggestive example.
enum ImmunizationFundingSource {
  /// Display: Private
  /// Definition: The vaccine was purchased with private funds.
  @JsonValue('private')
  private,

  /// Display: Public
  /// Definition: The vaccine was purchased with public funds.
  @JsonValue('public')
  public,
  ;

  @override
  String toString() {
    switch (this) {
      case private:
        return 'private';
      case public:
        return 'public';
    }
  }

  String toJson() => toString();
  ImmunizationFundingSource fromString(String str) {
    switch (str) {
      case 'private':
        return ImmunizationFundingSource.private;
      case 'public':
        return ImmunizationFundingSource.public;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  ImmunizationFundingSource fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
