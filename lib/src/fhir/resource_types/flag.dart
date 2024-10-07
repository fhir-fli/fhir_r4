import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [Flag] /// Prospective warnings of potential issues when providing care to the
/// patient.
class Flag extends DomainResource {
  Flag({
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
    required this.status,
    this.statusElement,
    this.category,
    required this.code,
    required this.subject,
    this.period,
    this.encounter,
    this.author,
  }) : super(resourceType: R4ResourceType.Flag);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Business identifiers assigned to this flag by the performer or other
  /// systems which remain constant as the resource is updated and propagates
  /// from server to server.
  final List<Identifier>? identifier;

  /// [status] /// Supports basic workflow.
  final FhirCode status;
  final Element? statusElement;

  /// [category] /// Allows a flag to be divided into different categories like clinical,
  /// administrative etc. Intended to be used as a means of filtering which flags
  /// are displayed to particular user or in a given context.
  final List<CodeableConcept>? category;

  /// [code] /// The coded value or textual component of the flag to display to the user.
  final CodeableConcept code;

  /// [subject] /// The patient, location, group, organization, or practitioner etc. this is
  /// about record this flag is associated with.
  final Reference subject;

  /// [period] /// The period of time from the activation of the flag to inactivation of the
  /// flag. If the flag is active, the end of the period should be unspecified.
  final Period? period;

  /// [encounter] /// This alert is only relevant during the encounter.
  final Reference? encounter;

  /// [author] /// The person, organization or device that created the flag.
  final Reference? author;
  @override
  Flag clone() => throw UnimplementedError();
  Flag copy({
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
    FhirCode? status,
    Element? statusElement,
    List<CodeableConcept>? category,
    CodeableConcept? code,
    Reference? subject,
    Period? period,
    Reference? encounter,
    Reference? author,
  }) {
    return Flag(
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
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      category: category ?? this.category,
      code: code ?? this.code,
      subject: subject ?? this.subject,
      period: period ?? this.period,
      encounter: encounter ?? this.encounter,
      author: author ?? this.author,
    );
  }
}
