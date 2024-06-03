import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ImagingStudy_Series] Representation of the content produced in a DICOM
/// imaging study. A study comprises a set of series, each of which includes a
/// set of Service-Object Pair Instances (SOP Instances - images or other data)
/// acquired or produced in a common context.  A series is of only one modality
/// (e.g. X-ray, CT, MR, ultrasound), but a study may have multiple series of
/// different modalities.

@freezed
class ImagingStudy_Series with _$ImagingStudy_Series {
  const ImagingStudy_Series._();

  const factory ImagingStudy_Series({
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
/// [uid] The DICOM Series Instance UID for the series.

    @JsonKey(name: 'uid') FhirId? uid,
/// [_uid] Extensions for uid

    @JsonKey(name: '_uid') PrimitiveElement? uidElement,
/// [number] The numeric identifier of this series in the study.

    @JsonKey(name: 'number') FhirUnsignedInt? number,
/// [_number] Extensions for number

    @JsonKey(name: '_number') PrimitiveElement? numberElement,
/// [modality] The distinct modality for this series. This may include both
/// acquisition and non-acquisition modalities.

    @JsonKey(name: 'modality') CodeableConcept? modality,
/// [description] A description of the series.

    @JsonKey(name: 'description') String? description,
/// [_description] Extensions for description

    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
/// [numberOfInstances] Number of SOP Instances in the Study. The value
/// given may be larger than the number of instance elements this resource
/// contains due to resource availability, security, or other factors. This
/// element should be present if any instance elements are present.

    @JsonKey(name: 'numberOfInstances') FhirUnsignedInt? numberOfInstances,
/// [_numberOfInstances] Extensions for numberOfInstances

    @JsonKey(name: '_numberOfInstances') PrimitiveElement? numberOfInstancesElement,
/// [endpoint] The network service providing access (e.g., query, view, or
/// retrieval) for this series. See implementation notes for information about
/// using DICOM endpoints. A series-level endpoint, if present, has precedence
/// over a study-level endpoint with the same Endpoint.connectionType.

    @JsonKey(name: 'endpoint') List<List<Reference>>? endpoint,
/// [bodySite] The anatomic structures examined. See DICOM Part 16 Annex L
/// (http://dicom.nema.org/medical/dicom/current/output/chtml/part16/chapter_L.html)
/// for DICOM to SNOMED-CT mappings. The bodySite may indicate the laterality
/// of body part imaged; if so, it shall be consistent with any content of
/// ImagingStudy.series.laterality.

    @JsonKey(name: 'bodySite') CodeableReference? bodySite,
/// [laterality] The laterality of the (possibly paired) anatomic
/// structures examined. E.g., the left knee, both lungs, or unpaired abdomen.
/// If present, shall be consistent with any laterality information indicated
/// in ImagingStudy.series.bodySite.

    @JsonKey(name: 'laterality') CodeableConcept? laterality,
/// [specimen] The specimen imaged, e.g., for whole slide imaging of a
/// biopsy.

    @JsonKey(name: 'specimen') List<List<Reference>>? specimen,
/// [started] The date and time the series was started.

    @JsonKey(name: 'started') FhirDateTime? started,
/// [_started] Extensions for started

    @JsonKey(name: '_started') PrimitiveElement? startedElement,
/// [performer] Indicates who or what performed the series and how they
/// were involved.

    @JsonKey(name: 'performer') List<List<ImagingStudy_Performer>>? performer,
/// [instance] A single SOP instance within the series, e.g. an image, or
/// presentation state.

    @JsonKey(name: 'instance') List<List<ImagingStudy_Instance>>? instance,
  }) = _$ImagingStudy_Series;

  @override
  String get fhirType => 'ImagingStudy_Series';

  factory ImagingStudy_Series.fromJson(Map<String, dynamic> json) =>
      _$ImagingStudy_SeriesFromJson(json);

  factory ImagingStudy_Series.fromYaml(dynamic yaml) => yaml is String
      ? ImagingStudy_Series.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ImagingStudy_Series.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ImagingStudy_Series cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ImagingStudy_Series.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ImagingStudy_SeriesFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
