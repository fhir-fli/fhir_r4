// ignore_for_file: invalid_annotation_target
// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../fhir_r4.dart';

part 'money.freezed.dart';
part 'money.g.dart';

/// [Money] An amount of economic utility in some recognized currency.
@freezed
class Money extends DataType with _$Money {
  /// [Money] An amount of economic utility in some recognized currency.
  Money._();

  /// [Money] An amount of economic utility in some recognized currency.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [value] Numerical value (with implicit precision).
  ///
  /// [valueElement] Extensions for value
  ///
  /// [currency] ISO 4217 Currency Code.
  ///
  /// [currencyElement] Extensions for currency
  factory Money({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [value] Numerical value (with implicit precision).
    FhirDecimal? value,

    /// [valueElement] Extensions for value
    @JsonKey(name: '_value') PrimitiveElement? valueElement,

    /// [currency] ISO 4217 Currency Code.
    FhirCode? currency,

    /// [currencyElement] Extensions for currency
    @JsonKey(name: '_currency') PrimitiveElement? currencyElement,
  }) = _Money;

  @override
  String get fhirType => 'Money';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Money.fromYaml(dynamic yaml) => yaml is String
      ? Money.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Money.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Money cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Money.fromJson(Map<String, dynamic> json) => _$MoneyFromJson(json);

  /// Acts like a constructor, returns a [Money], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Money.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MoneyFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}
