import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ImagingSelection_Performer] A selection of DICOM SOP instances and/or
/// frames within a single Study and Series. This might include additional
/// specifics such as an image region, an Observation UID or a Segmentation
/// Number, allowing linkage to an Observation Resource or transferring this
/// information along with the ImagingStudy Resource.

@freezed
class ImagingSelection_Performer with _$ImagingSelection_Performer {
  const ImagingSelection_Performer._();

  const factory ImagingSelection_Performer({
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
/// [function] Distinguishes the type of involvement of the performer.

    @JsonKey(name: 'function') CodeableConcept? function,
/// [actor] Author – human or machine.

    @JsonKey(name: 'actor') Reference? actor,
  }) = _$ImagingSelection_Performer;

  @override
  String get fhirType => 'ImagingSelection_Performer';

  factory ImagingSelection_Performer.fromJson(Map<String, dynamic> json) =>
      _$ImagingSelection_PerformerFromJson(json);

  factory ImagingSelection_Performer.fromYaml(dynamic yaml) => yaml is String
      ? ImagingSelection_Performer.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ImagingSelection_Performer.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ImagingSelection_Performer cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ImagingSelection_Performer.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ImagingSelection_PerformerFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
