import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [EvidenceReport_Section] The EvidenceReport Resource is a specialized
/// container for a collection of resources and codeable concepts, adapted to
/// support compositions of Evidence, EvidenceVariable, and Citation resources
/// and related concepts.

@freezed
class EvidenceReport_Section with _$EvidenceReport_Section {
  const EvidenceReport_Section._();

  const factory EvidenceReport_Section({
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
/// [title] The label for this particular section.  This will be part of
/// the rendered content for the document, and is often used to build a table
/// of contents.

    @JsonKey(name: 'title') String? title,
/// [_title] Extensions for title

    @JsonKey(name: '_title') PrimitiveElement? titleElement,
/// [focus] A code identifying the kind of content contained within the
/// section. This should be consistent with the section title.

    @JsonKey(name: 'focus') CodeableConcept? focus,
/// [focusReference] A definitional Resource identifying the kind of
/// content contained within the section. This should be consistent with the
/// section title.

    @JsonKey(name: 'focusReference') Reference? focusReference,
/// [author] Identifies who is responsible for the information in this
/// section, not necessarily who typed it in.

    @JsonKey(name: 'author') List<List<Reference>>? author,
/// [text] A human-readable narrative that contains the attested content of
/// the section, used to represent the content of the resource to a human. The
/// narrative need not encode all the structured data, but is peferred to
/// contain sufficient detail to make it acceptable for a human to just read
/// the narrative.

    @JsonKey(name: 'text') Narrative? text,
/// [mode] How the entry list was prepared - whether it is a working list
/// that is suitable for being maintained on an ongoing basis, or if it
/// represents a snapshot of a list of items from another source, or whether it
/// is a prepared list where items may be marked as added, modified or deleted.

    @JsonKey(name: 'mode') FhirCode? mode,
/// [_mode] Extensions for mode

    @JsonKey(name: '_mode') PrimitiveElement? modeElement,
/// [orderedBy] Specifies the order applied to the items in the section
/// entries.

    @JsonKey(name: 'orderedBy') CodeableConcept? orderedBy,
/// [entryClassifier] Specifies any type of classification of the evidence
/// report.

    @JsonKey(name: 'entryClassifier') List<List<CodeableConcept>>? entryClassifier,
/// [entryReference] A reference to the actual resource from which the
/// narrative in the section is derived.

    @JsonKey(name: 'entryReference') List<List<Reference>>? entryReference,
/// [entryQuantity] Quantity as content.

    @JsonKey(name: 'entryQuantity') List<List<Quantity>>? entryQuantity,
/// [emptyReason] If the section is empty, why the list is empty. An empty
/// section typically has some text explaining the empty reason.

    @JsonKey(name: 'emptyReason') CodeableConcept? emptyReason,
/// [section] A nested sub-section within this section.

    @JsonKey(name: 'section') List<List<EvidenceReport_Section>>? section,
  }) = _$EvidenceReport_Section;

  @override
  String get fhirType => 'EvidenceReport_Section';

  factory EvidenceReport_Section.fromJson(Map<String, dynamic> json) =>
      _$EvidenceReport_SectionFromJson(json);

  factory EvidenceReport_Section.fromYaml(dynamic yaml) => yaml is String
      ? EvidenceReport_Section.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? EvidenceReport_Section.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'EvidenceReport_Section cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory EvidenceReport_Section.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$EvidenceReport_SectionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
