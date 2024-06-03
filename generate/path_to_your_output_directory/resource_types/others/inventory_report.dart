import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [InventoryReport] A report of inventory or stock items.

@freezed
class InventoryReport with _$InventoryReport {
  const InventoryReport._();

  const factory InventoryReport({
/// [resourceType] This is a InventoryReport resource

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
/// [identifier] Business identifier for the InventoryReport.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [status] The status of the inventory check or notification - whether
/// this is draft (e.g. the report is still pending some updates) or active.

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [countType] Whether the report is about the current inventory count
/// (snapshot) or a differential change in inventory (change).

    @JsonKey(name: 'countType') FhirCode? countType,
/// [_countType] Extensions for countType

    @JsonKey(name: '_countType') PrimitiveElement? countTypeElement,
/// [operationType] What type of operation is being performed - addition or
/// subtraction.

    @JsonKey(name: 'operationType') CodeableConcept? operationType,
/// [operationTypeReason] The reason for this count - regular count, ad-hoc
/// count, new arrivals, etc.

    @JsonKey(name: 'operationTypeReason') CodeableConcept? operationTypeReason,
/// [reportedDateTime] When the report has been submitted.

    @JsonKey(name: 'reportedDateTime') FhirDateTime? reportedDateTime,
/// [_reportedDateTime] Extensions for reportedDateTime

    @JsonKey(name: '_reportedDateTime') PrimitiveElement? reportedDateTimeElement,
/// [reporter] Who submits the report.

    @JsonKey(name: 'reporter') Reference? reporter,
/// [reportingPeriod] The period the report refers to.

    @JsonKey(name: 'reportingPeriod') Period? reportingPeriod,
/// [inventoryListing] An inventory listing section (grouped by any of the
/// attributes).

    @JsonKey(name: 'inventoryListing') List<List<InventoryReport_InventoryListing>>? inventoryListing,
/// [note] A note associated with the InventoryReport.

    @JsonKey(name: 'note') List<List<Annotation>>? note,
  }) = _$InventoryReport;

  @override
  String get fhirType => 'InventoryReport';

  factory InventoryReport.fromJson(Map<String, dynamic> json) =>
      _$InventoryReportFromJson(json);

  factory InventoryReport.fromYaml(dynamic yaml) => yaml is String
      ? InventoryReport.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? InventoryReport.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'InventoryReport cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory InventoryReport.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$InventoryReportFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
