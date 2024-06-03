import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Composition_Event] A set of healthcare-related information that is
/// assembled together into a single logical package that provides a single
/// coherent statement of meaning, establishes its own context and that has
/// clinical attestation with regard to who is making the statement. A
/// Composition defines the structure and narrative content necessary for a
/// document. However, a Composition alone does not constitute a document.
/// Rather, the Composition must be the first entry in a Bundle where
/// Bundle.type=document, and any other resources referenced from Composition
/// must be included as subsequent entries in the Bundle (for example Patient,
/// Practitioner, Encounter, etc.).

@freezed
class Composition_Event with _$Composition_Event {
  const Composition_Event._();

  const factory Composition_Event({
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
/// [period] The period of time covered by the documentation. There is no
/// assertion that the documentation is a complete representation for this
/// period, only that it documents events during this time.

    @JsonKey(name: 'period') Period? period,
/// [detail] Represents the main clinical acts, such as a colonoscopy or an
/// appendectomy, being documented. In some cases, the event is inherent in the
/// typeCode, such as a "History and Physical Report" in which case the
/// procedure being documented is necessarily a "History and Physical" act. The
/// events may be included as a code or as a reference to an other resource.

    @JsonKey(name: 'detail') List<List<CodeableReference>>? detail,
  }) = _$Composition_Event;

  @override
  String get fhirType => 'Composition_Event';

  factory Composition_Event.fromJson(Map<String, dynamic> json) =>
      _$Composition_EventFromJson(json);

  factory Composition_Event.fromYaml(dynamic yaml) => yaml is String
      ? Composition_Event.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Composition_Event.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Composition_Event cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Composition_Event.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Composition_EventFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
