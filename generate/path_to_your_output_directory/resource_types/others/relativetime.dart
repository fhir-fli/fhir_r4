import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [RelativeTime] RelativeTime is used to express a point in time or an
/// interval of time relative to an event defined in data types other than
/// dateTime.

@freezed
class RelativeTime with _$RelativeTime {
  const RelativeTime._();

  const factory RelativeTime({
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
/// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the element and that modifies
/// the understanding of the element in which it is contained and/or the
/// understanding of the containing element's descendants. Usually modifier
/// elements provide negation or qualification. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.

Modifier extensions SHALL NOT
/// change the meaning of any elements on Resource or DomainResource (including
/// cannot change the meaning of modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [contextReference] The specific event occurrence or resource context
/// used as a base point (reference point) in time.  This establishes the
/// context in which the 'path' is evaluated.

    @JsonKey(name: 'contextReference') Reference? contextReference,
/// [contextDefinition] The type of event used as a base point.  Instances
/// of this definition will establish the context for evaluating the path to
/// determine the base time for the offset.

    @JsonKey(name: 'contextDefinition') FhirCanonical? contextDefinition,
/// [contextPath] Path to the element defining the point in time. Any valid
/// FHIRPath expression.

    @JsonKey(name: 'contextPath') String? contextPath,
/// [_contextPath] Extensions for contextPath

    @JsonKey(name: '_contextPath') PrimitiveElement? contextPathElement,
/// [contextCode] Coded representation of the event used as a base point
/// (reference point) in time.

    @JsonKey(name: 'contextCode') CodeableConcept? contextCode,
/// [offsetDuration] An offset or offset range before (negative values) or
/// after (positive values) the event. Range is limited to time-valued
/// quantities (Durations).

    @JsonKey(name: 'offsetDuration') FhirDuration? offsetDuration,
/// [offsetRange] An offset or offset range before (negative values) or
/// after (positive values) the event. Range is limited to time-valued
/// quantities (Durations).

    @JsonKey(name: 'offsetRange') Range? offsetRange,
/// [text] Free-text (human-readable) description.

    @JsonKey(name: 'text') String? text,
/// [_text] Extensions for text

    @JsonKey(name: '_text') PrimitiveElement? textElement,
  }) = _$RelativeTime;

  @override
  String get fhirType => 'RelativeTime';

  factory RelativeTime.fromJson(Map<String, dynamic> json) =>
      _$RelativeTimeFromJson(json);

  factory RelativeTime.fromYaml(dynamic yaml) => yaml is String
      ? RelativeTime.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? RelativeTime.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'RelativeTime cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory RelativeTime.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$RelativeTimeFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
