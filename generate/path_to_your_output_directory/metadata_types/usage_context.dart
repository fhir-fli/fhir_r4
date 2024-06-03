import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [UsageContext] Specifies clinical/business/etc. metadata that can be
/// used to retrieve, index and/or categorize an artifact. This metadata can
/// either be specific to the applicable population (e.g., age category, DRG)
/// or the specific context of care (e.g., venue, care setting, provider of
/// care).

@freezed
class UsageContext with _$UsageContext {
  const UsageContext._();

  const factory UsageContext({
/// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [code] A code that identifies the type of context being specified by
/// this usage context.

    @JsonKey(name: 'code') Coding? code,
/// [valueCodeableConcept] A value that defines the context specified in
/// this context of use. The interpretation of the value is defined by the
/// code.

    @JsonKey(name: 'valueCodeableConcept') CodeableConcept? valueCodeableConcept,
/// [valueQuantity] A value that defines the context specified in this
/// context of use. The interpretation of the value is defined by the code.

    @JsonKey(name: 'valueQuantity') Quantity? valueQuantity,
/// [valueRange] A value that defines the context specified in this context
/// of use. The interpretation of the value is defined by the code.

    @JsonKey(name: 'valueRange') Range? valueRange,
/// [valueReference] A value that defines the context specified in this
/// context of use. The interpretation of the value is defined by the code.

    @JsonKey(name: 'valueReference') Reference? valueReference,
  }) = _$UsageContext;

  @override
  String get fhirType => 'UsageContext';

  factory UsageContext.fromJson(Map<String, dynamic> json) =>
      _$UsageContextFromJson(json);

  factory UsageContext.fromYaml(dynamic yaml) => yaml is String
      ? UsageContext.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? UsageContext.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'UsageContext cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

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
  String toJsonString() => jsonEncode(toJson());
}
