import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [AdverseEvent_SuspectEntity] An event (i.e. any change to current
/// patient status) that may be related to unintended effects on a patient or
/// research participant. The unintended effects may require additional
/// monitoring, treatment, hospitalization, or may result in death. The
/// AdverseEvent resource also extends to potential or avoided events that
/// could have had such effects. There are two major domains where the
/// AdverseEvent resource is expected to be used. One is in clinical care
/// reported adverse events and the other is in reporting adverse events in
/// clinical  research trial management. Adverse events can be reported by
/// healthcare providers, patients, caregivers or by medical products
/// manufacturers. Given the differences between these two concepts, we
/// recommend consulting the domain specific implementation guides when
/// implementing the AdverseEvent Resource. The implementation guides include
/// specific extensions, value sets and constraints.

@freezed
class AdverseEvent_SuspectEntity with _$AdverseEvent_SuspectEntity {
  const AdverseEvent_SuspectEntity._();

  const factory AdverseEvent_SuspectEntity({
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
///
/// Modifier extensions SHALL NOT change the meaning of any elements on
/// Resource or DomainResource (including cannot change the meaning of
/// modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [instanceCodeableConcept] Identifies the actual instance of what caused
/// the adverse event.  May be a substance, medication, medication
/// administration, medication statement or a device.

    @JsonKey(name: 'instanceCodeableConcept') CodeableConcept? instanceCodeableConcept,
/// [instanceReference] Identifies the actual instance of what caused the
/// adverse event.  May be a substance, medication, medication administration,
/// medication statement or a device.

    @JsonKey(name: 'instanceReference') Reference? instanceReference,
/// [causality] Information on the possible cause of the event.

    @JsonKey(name: 'causality') AdverseEvent_Causality? causality,
  }) = _$AdverseEvent_SuspectEntity;

  @override
  String get fhirType => 'AdverseEvent_SuspectEntity';

  factory AdverseEvent_SuspectEntity.fromJson(Map<String, dynamic> json) =>
      _$AdverseEvent_SuspectEntityFromJson(json);

  factory AdverseEvent_SuspectEntity.fromYaml(dynamic yaml) => yaml is String
      ? AdverseEvent_SuspectEntity.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? AdverseEvent_SuspectEntity.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'AdverseEvent_SuspectEntity cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory AdverseEvent_SuspectEntity.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$AdverseEvent_SuspectEntityFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
