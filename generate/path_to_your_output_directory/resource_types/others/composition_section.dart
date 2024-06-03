import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Composition_Section] A set of healthcare-related information that is
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
class Composition_Section with _$Composition_Section {
  const Composition_Section._();

  const factory Composition_Section({
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
/// [title] The label for this particular section.  This will be part of
/// the rendered content for the document, and is often used to build a table
/// of contents.

    @JsonKey(name: 'title') String? title,
/// [_title] Extensions for title

    @JsonKey(name: '_title') PrimitiveElement? titleElement,
/// [code] A code identifying the kind of content contained within the
/// section. This must be consistent with the section title.

    @JsonKey(name: 'code') CodeableConcept? code,
/// [author] Identifies who is responsible for the information in this
/// section, not necessarily who typed it in.

    @JsonKey(name: 'author') List<List<Reference>>? author,
/// [focus] The actual focus of the section when it is not the subject of
/// the composition, but instead represents something or someone associated
/// with the subject such as (for a patient subject) a spouse, parent, fetus,
/// or donor. If not focus is specified, the focus is assumed to be focus of
/// the parent section, or, for a section in the Composition itself, the
/// subject of the composition. Sections with a focus SHALL only include
/// resources where the logical subject (patient, subject, focus, etc.) matches
/// the section focus, or the resources have no logical subject (few
/// resources).

    @JsonKey(name: 'focus') Reference? focus,
/// [text] A human-readable narrative that contains the attested content of
/// the section, used to represent the content of the resource to a human. The
/// narrative need not encode all the structured data, but is required to
/// contain sufficient detail to make it "clinically safe" for a human to just
/// read the narrative.

    @JsonKey(name: 'text') Narrative? text,
/// [orderedBy] Specifies the order applied to the items in the section
/// entries.

    @JsonKey(name: 'orderedBy') CodeableConcept? orderedBy,
/// [entry] A reference to the actual resource from which the narrative in
/// the section is derived.

    @JsonKey(name: 'entry') List<List<Reference>>? entry,
/// [emptyReason] If the section is empty, why the list is empty. An empty
/// section typically has some text explaining the empty reason.

    @JsonKey(name: 'emptyReason') CodeableConcept? emptyReason,
/// [section] A nested sub-section within this section.

    @JsonKey(name: 'section') List<List<Composition_Section>>? section,
  }) = _$Composition_Section;

  @override
  String get fhirType => 'Composition_Section';

  factory Composition_Section.fromJson(Map<String, dynamic> json) =>
      _$Composition_SectionFromJson(json);

  factory Composition_Section.fromYaml(dynamic yaml) => yaml is String
      ? Composition_Section.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Composition_Section.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Composition_Section cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Composition_Section.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Composition_SectionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
