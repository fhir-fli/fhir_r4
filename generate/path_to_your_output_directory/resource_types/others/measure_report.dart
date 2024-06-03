import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [MeasureReport] The MeasureReport resource contains the results of the
/// calculation of a measure; and optionally a reference to the resources
/// involved in that calculation.

@freezed
class MeasureReport with _$MeasureReport {
  const MeasureReport._();

  const factory MeasureReport({
/// [resourceType] This is a MeasureReport resource

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
/// [identifier] A formal identifier that is used to identify this
/// MeasureReport when it is represented in other formats or referenced in a
/// specification, model, design or an instance.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [status] The MeasureReport status. No data will be available until the
/// MeasureReport status is complete.

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [type] The type of measure report. This may be an individual report,
/// which provides the score for the measure for an individual member of the
/// population; a subject-listing, which returns the list of members that meet
/// the various criteria in the measure; a summary report, which returns a
/// population count for each of the criteria in the measure; or a
/// data-collection, which enables the MeasureReport to be used to exchange the
/// data-of-interest for a quality measure.

    @JsonKey(name: 'type') FhirCode? type,
/// [_type] Extensions for type

    @JsonKey(name: '_type') PrimitiveElement? typeElement,
/// [dataUpdateType] Indicates whether the data submitted in a
/// data-exchange report represents a snapshot or incremental update. A
/// snapshot update replaces all previously submitted data for the receiver,
/// whereas an incremental update represents only updated and/or changed data
/// and should be applied as a differential update to the existing submitted
/// data for the receiver.

    @JsonKey(name: 'dataUpdateType') FhirCode? dataUpdateType,
/// [_dataUpdateType] Extensions for dataUpdateType

    @JsonKey(name: '_dataUpdateType') PrimitiveElement? dataUpdateTypeElement,
/// [measure] A reference to the Measure that was calculated to produce
/// this report.

    @JsonKey(name: 'measure') FhirCanonical? measure,
/// [subject] Optional subject identifying the individual or individuals
/// the report is for.

    @JsonKey(name: 'subject') Reference? subject,
/// [date] The date this measure was calculated.

    @JsonKey(name: 'date') FhirDateTime? date,
/// [_date] Extensions for date

    @JsonKey(name: '_date') PrimitiveElement? dateElement,
/// [reporter] The individual or organization that is reporting the data.

    @JsonKey(name: 'reporter') Reference? reporter,
/// [reportingVendor] A reference to the vendor who queried the data,
/// calculated results and/or generated the report. The ‘reporting vendor’ is
/// intended to represent the submitting entity when it is not the same as the
/// reporting entity. This extension is used when the Receiver is interested in
/// getting vendor information in the report.

    @JsonKey(name: 'reportingVendor') Reference? reportingVendor,
/// [location] A reference to the location for which the data is being
/// reported.

    @JsonKey(name: 'location') Reference? location,
/// [period] The reporting period for which the report was calculated.

    @JsonKey(name: 'period') Period? period,
/// [inputParameters] A reference to a Parameters resource (typically
/// represented using a contained resource) that represents any input
/// parameters that were provided to the operation that generated the report.

    @JsonKey(name: 'inputParameters') Reference? inputParameters,
/// [scoring] Indicates how the calculation is performed for the measure,
/// including proportion, ratio, continuous-variable, and cohort. The value set
/// is extensible, allowing additional measure scoring types to be represented.
/// It is expected to be the same as the scoring element on the referenced
/// Measure.

    @JsonKey(name: 'scoring') CodeableConcept? scoring,
/// [improvementNotation] Whether improvement in the measure is noted by an
/// increase or decrease in the measure score.

    @JsonKey(name: 'improvementNotation') CodeableConcept? improvementNotation,
/// [group] The results of the calculation, one for each population group
/// in the measure.

    @JsonKey(name: 'group') List<List<MeasureReport_Group>>? group,
/// [supplementalData] A reference to a Resource that represents additional
/// information collected for the report. If the value of the supplemental data
/// is not a Resource (i.e. evaluating the supplementalData expression for this
/// case in the measure results in a value that is not a FHIR Resource), it is
/// reported as a reference to a contained Observation resource.

    @JsonKey(name: 'supplementalData') List<List<Reference>>? supplementalData,
/// [evaluatedResource] Evaluated resources are used to capture what data
/// was involved in the calculation of a measure. This usage is only allowed
/// for individual reports to ensure that the size of the MeasureReport
/// resource is bounded.

    @JsonKey(name: 'evaluatedResource') List<List<Reference>>? evaluatedResource,
  }) = _$MeasureReport;

  @override
  String get fhirType => 'MeasureReport';

  factory MeasureReport.fromJson(Map<String, dynamic> json) =>
      _$MeasureReportFromJson(json);

  factory MeasureReport.fromYaml(dynamic yaml) => yaml is String
      ? MeasureReport.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MeasureReport.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MeasureReport cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory MeasureReport.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MeasureReportFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
