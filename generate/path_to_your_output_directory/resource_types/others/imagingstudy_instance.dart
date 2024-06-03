import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ImagingStudy_Instance] Representation of the content produced in a
/// DICOM imaging study. A study comprises a set of series, each of which
/// includes a set of Service-Object Pair Instances (SOP Instances - images or
/// other data) acquired or produced in a common context.  A series is of only
/// one modality (e.g. X-ray, CT, MR, ultrasound), but a study may have
/// multiple series of different modalities.

@freezed
class ImagingStudy_Instance with _$ImagingStudy_Instance {
  const ImagingStudy_Instance._();

  const factory ImagingStudy_Instance({
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
/// [uid] The DICOM SOP Instance UID for this image or other DICOM content.

    @JsonKey(name: 'uid') FhirId? uid,
/// [_uid] Extensions for uid

    @JsonKey(name: '_uid') PrimitiveElement? uidElement,
/// [sopClass] DICOM instance  type.

    @JsonKey(name: 'sopClass') FhirOid? sopClass,
/// [_sopClass] Extensions for sopClass

    @JsonKey(name: '_sopClass') PrimitiveElement? sopClassElement,
/// [number] The number of instance in the series.

    @JsonKey(name: 'number') FhirUnsignedInt? number,
/// [_number] Extensions for number

    @JsonKey(name: '_number') PrimitiveElement? numberElement,
/// [title] The description of the instance.

    @JsonKey(name: 'title') String? title,
/// [_title] Extensions for title

    @JsonKey(name: '_title') PrimitiveElement? titleElement,
  }) = _$ImagingStudy_Instance;

  @override
  String get fhirType => 'ImagingStudy_Instance';

  factory ImagingStudy_Instance.fromJson(Map<String, dynamic> json) =>
      _$ImagingStudy_InstanceFromJson(json);

  factory ImagingStudy_Instance.fromYaml(dynamic yaml) => yaml is String
      ? ImagingStudy_Instance.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ImagingStudy_Instance.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ImagingStudy_Instance cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ImagingStudy_Instance.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ImagingStudy_InstanceFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
