import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ImagingStudy] Representation of the content produced in a DICOM
/// imaging study. A study comprises a set of series, each of which includes a
/// set of Service-Object Pair Instances (SOP Instances - images or other data)
/// acquired or produced in a common context.  A series is of only one modality
/// (e.g. X-ray, CT, MR, ultrasound), but a study may have multiple series of
/// different modalities.

@freezed
class ImagingStudy with _$ImagingStudy {
  const ImagingStudy._();

  const factory ImagingStudy({
/// [resourceType] This is a ImagingStudy resource

    @JsonKey(name: 'resourceType') dynamic? resourceType,
/// [id] The logical id of the resource, as used in the URL for the
/// resource. Once assigned, this value never changes.

    @JsonKey(name: 'id') FhirId? id,
/// [meta] The metadata about the resource. This is content that is
/// maintained by the infrastructure. Changes to the content might not always
/// be associated with version changes to the resource.

    @JsonKey(name: 'meta') FhirMeta? meta,
/// [implicitRules] A reference to a set of rules that were followed when
/// the resource was constructed, and which must be understood when processing
/// the content. Often, this is a reference to an implementation guide that
/// defines the special rules along with other profiles etc.

    @JsonKey(name: 'implicitRules') FhirUri? implicitRules,
/// [_implicitRules] Extensions for implicitRules

    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,
/// [language] The base language in which the resource is written.

    @JsonKey(name: 'language') FhirCode? language,
/// [_language] Extensions for language

    @JsonKey(name: '_language') PrimitiveElement? languageElement,
/// [text] A human-readable narrative that contains a summary of the
/// resource and can be used to represent the content of the resource to a
/// human. The narrative need not encode all the structured data, but is
/// required to contain sufficient detail to make it "clinically safe" for a
/// human to just read the narrative. Resource definitions may define what
/// content should be represented in the narrative to ensure clinical safety.

    @JsonKey(name: 'text') Narrative? text,
/// [contained] These resources do not have an independent existence apart
/// from the resource that contains them - they cannot be identified
/// independently, nor can they have their own independent transaction scope.
/// This is allowed to be a Parameters resource if and only if it is referenced
/// by a resource that provides context/meaning.

    @JsonKey(name: 'contained') List<List<ResourceList>>? contained,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the resource. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the resource and that modifies
/// the understanding of the element that contains it and/or the understanding
/// of the containing element's descendants. Usually modifier elements provide
/// negation or qualification. To make the use of extensions safe and
/// managable, there is a strict set of governance applied to the definition
/// and use of extensions. Though any implementer is allowed to define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.
///
/// Modifier extensions SHALL NOT change the meaning of any elements on
/// Resource or DomainResource (including cannot change the meaning of
/// modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [identifier] Identifiers for the ImagingStudy such as DICOM Study
/// Instance UID.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [status] The current state of the ImagingStudy resource. This is not
/// the status of any ServiceRequest or Task resources associated with the
/// ImagingStudy.

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [modality] A list of all the distinct values of series.modality. This
/// may include both acquisition and non-acquisition modalities.

    @JsonKey(name: 'modality') List<List<CodeableConcept>>? modality,
/// [subject] The subject, typically a patient, of the imaging study.

    @JsonKey(name: 'subject') Reference? subject,
/// [encounter] The healthcare event (e.g. a patient and healthcare
/// provider interaction) during which this ImagingStudy is made.

    @JsonKey(name: 'encounter') Reference? encounter,
/// [started] Date and time the study started.

    @JsonKey(name: 'started') FhirDateTime? started,
/// [_started] Extensions for started

    @JsonKey(name: '_started') PrimitiveElement? startedElement,
/// [basedOn] A list of the diagnostic requests that resulted in this
/// imaging study being performed.

    @JsonKey(name: 'basedOn') List<List<Reference>>? basedOn,
/// [partOf] A larger event of which this particular ImagingStudy is a
/// component or step.  For example,  an ImagingStudy as part of a procedure.

    @JsonKey(name: 'partOf') List<List<Reference>>? partOf,
/// [referrer] The requesting/referring physician.

    @JsonKey(name: 'referrer') Reference? referrer,
/// [endpoint] The network service providing access (e.g., query, view, or
/// retrieval) for the study. See implementation notes for information about
/// using DICOM endpoints. A study-level endpoint applies to each series in the
/// study, unless overridden by a series-level endpoint with the same
/// Endpoint.connectionType.

    @JsonKey(name: 'endpoint') List<List<Reference>>? endpoint,
/// [numberOfSeries] Number of Series in the Study. This value given may be
/// larger than the number of series elements this Resource contains due to
/// resource availability, security, or other factors. This element should be
/// present if any series elements are present.

    @JsonKey(name: 'numberOfSeries') FhirUnsignedInt? numberOfSeries,
/// [_numberOfSeries] Extensions for numberOfSeries

    @JsonKey(name: '_numberOfSeries') PrimitiveElement? numberOfSeriesElement,
/// [numberOfInstances] Number of SOP Instances in Study. This value given
/// may be larger than the number of instance elements this resource contains
/// due to resource availability, security, or other factors. This element
/// should be present if any instance elements are present.

    @JsonKey(name: 'numberOfInstances') FhirUnsignedInt? numberOfInstances,
/// [_numberOfInstances] Extensions for numberOfInstances

    @JsonKey(name: '_numberOfInstances') PrimitiveElement? numberOfInstancesElement,
/// [procedure] This field corresponds to the DICOM Procedure Code Sequence
/// (0008,1032). This is different from the FHIR Procedure resource that may
/// include the ImagingStudy.

    @JsonKey(name: 'procedure') List<List<CodeableReference>>? procedure,
/// [location] The principal physical location where the ImagingStudy was
/// performed.

    @JsonKey(name: 'location') Reference? location,
/// [reason] Description of clinical condition indicating why the
/// ImagingStudy was requested, and/or Indicates another resource whose
/// existence justifies this Study.

    @JsonKey(name: 'reason') List<List<CodeableReference>>? reason,
/// [note] Per the recommended DICOM mapping, this element is derived from
/// the Study Description attribute (0008,1030). Observations or findings about
/// the imaging study should be recorded in another resource, e.g. Observation,
/// and not in this element.

    @JsonKey(name: 'note') List<List<Annotation>>? note,
/// [description] The Imaging Manager description of the study.
/// Institution-generated description or classification of the Study
/// (component) performed.

    @JsonKey(name: 'description') String? description,
/// [_description] Extensions for description

    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
/// [series] Each study has one or more series of images or other content.

    @JsonKey(name: 'series') List<List<ImagingStudy_Series>>? series,
  }) = _$ImagingStudy;

  @override
  String get fhirType => 'ImagingStudy';

  factory ImagingStudy.fromJson(Map<String, dynamic> json) =>
      _$ImagingStudyFromJson(json);

  factory ImagingStudy.fromYaml(dynamic yaml) => yaml is String
      ? ImagingStudy.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ImagingStudy.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ImagingStudy cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ImagingStudy.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ImagingStudyFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
