// ignore_for_file: invalid_annotation_target
// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../fhir_r4.dart';

part 'usage_context.freezed.dart';
part 'usage_context.g.dart';

/// [UsageContext] Specifies clinical/business/etc. metadata that can be used
@freezed
class UsageContext extends DataType with _$UsageContext {
  /// [UsageContext] Specifies clinical/business/etc. metadata that can be used
  UsageContext._();

  /// [UsageContext] Specifies clinical/business/etc. metadata that can be used
  /// to retrieve, index and/or categorize an artifact. This metadata can either
  /// be specific to the applicable population (e.g., age category, DRG) or the
  ///  specific context of care (e.g., venue, care setting, provider of care).
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [code] A code that identifies the type of context being specified by this
  ///  usage context.
  ///
  /// [valueCodeableConcept] A value that defines the context specified in this
  ///  context of use. The interpretation of the value is defined by the code.
  ///
  /// [valueQuantity] A value that defines the context specified in this
  ///  context of use. The interpretation of the value is defined by the code.
  ///
  /// [valueRange] A value that defines the context specified in this context
  ///  of use. The interpretation of the value is defined by the code.
  ///
  /// [valueReference] A value that defines the context specified in this
  ///  context of use. The interpretation of the value is defined by the code.
  const factory UsageContext({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [code] A code that identifies the type of context being specified by this
    ///  usage context.
    required Coding code,

    /// [valueCodeableConcept] A value that defines the context specified in this
    ///  context of use. The interpretation of the value is defined by the code.
    CodeableConcept? valueCodeableConcept,

    /// [valueQuantity] A value that defines the context specified in this
    ///  context of use. The interpretation of the value is defined by the code.
    Quantity? valueQuantity,

    /// [valueRange] A value that defines the context specified in this context
    ///  of use. The interpretation of the value is defined by the code.
    Range? valueRange,

    /// [valueReference] A value that defines the context specified in this
    ///  context of use. The interpretation of the value is defined by the code.
    Reference? valueReference,
  }) = _UsageContext;

  @override
  String get fhirType => 'UsageContext';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory UsageContext.fromYaml(dynamic yaml) => yaml is String
      ? UsageContext.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? UsageContext.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'UsageContext cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory UsageContext.fromJson(Map<String, dynamic> json) =>
      _$UsageContextFromJson(json);

  /// Acts like a constructor, returns a [UsageContext], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory UsageContext.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$UsageContextFromJson(json);
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
