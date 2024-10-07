import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [Basic] /// Basic is used for handling concepts not yet defined in FHIR, narrative-only
/// resources that don't map to an existing resource, and custom resources not
/// appropriate for inclusion in the FHIR specification.
class Basic extends DomainResource {
  Basic({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.code,
    this.subject,
    this.created,
    this.createdElement,
    this.author,
  }) : super(resourceType: R4ResourceType.Basic);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Identifier assigned to the resource for business purposes, outside the
  /// context of FHIR.
  final List<Identifier>? identifier;

  /// [code] /// Identifies the 'type' of resource - equivalent to the resource name for
  /// other resources.
  final CodeableConcept code;

  /// [subject] /// Identifies the patient, practitioner, device or any other resource that is
  /// the "focus" of this resource.
  final Reference? subject;

  /// [created] /// Identifies when the resource was first created.
  final FhirDate? created;
  final Element? createdElement;

  /// [author] /// Indicates who was responsible for creating the resource instance.
  final Reference? author;
  @override
  Basic clone() => throw UnimplementedError();
  Basic copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    CodeableConcept? code,
    Reference? subject,
    FhirDate? created,
    Element? createdElement,
    Reference? author,
  }) {
    return Basic(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      code: code ?? this.code,
      subject: subject ?? this.subject,
      created: created ?? this.created,
      createdElement: createdElement ?? this.createdElement,
      author: author ?? this.author,
    );
  }
}
