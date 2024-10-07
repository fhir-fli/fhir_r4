import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [RelatedPerson] /// Information about a person that is involved in the care for a patient, but
/// who is not the target of healthcare, nor has a formal responsibility in the
/// care process.
class RelatedPerson extends DomainResource {
  RelatedPerson({
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
    this.active,
    this.activeElement,
    required this.patient,
    this.relationship,
    this.name,
    this.telecom,
    this.gender,
    this.genderElement,
    this.birthDate,
    this.birthDateElement,
    this.address,
    this.photo,
    this.period,
    this.communication,
  }) : super(resourceType: R4ResourceType.RelatedPerson);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Identifier for a person within a particular scope.
  final List<Identifier>? identifier;

  /// [active] /// Whether this related person record is in active use.
  final FhirBoolean? active;
  final Element? activeElement;

  /// [patient] /// The patient this person is related to.
  final Reference patient;

  /// [relationship] /// The nature of the relationship between a patient and the related person.
  final List<CodeableConcept>? relationship;

  /// [name] /// A name associated with the person.
  final List<HumanName>? name;

  /// [telecom] /// A contact detail for the person, e.g. a telephone number or an email
  /// address.
  final List<ContactPoint>? telecom;

  /// [gender] /// Administrative Gender - the gender that the person is considered to have
  /// for administration and record keeping purposes.
  final FhirCode? gender;
  final Element? genderElement;

  /// [birthDate] /// The date on which the related person was born.
  final FhirDate? birthDate;
  final Element? birthDateElement;

  /// [address] /// Address where the related person can be contacted or visited.
  final List<Address>? address;

  /// [photo] /// Image of the person.
  final List<Attachment>? photo;

  /// [period] /// The period of time during which this relationship is or was active. If
  /// there are no dates defined, then the interval is unknown.
  final Period? period;

  /// [communication] /// A language which may be used to communicate with about the patient's
  /// health.
  final List<RelatedPersonCommunication>? communication;
  @override
  RelatedPerson clone() => throw UnimplementedError();
  RelatedPerson copy({
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
    FhirBoolean? active,
    Element? activeElement,
    Reference? patient,
    List<CodeableConcept>? relationship,
    List<HumanName>? name,
    List<ContactPoint>? telecom,
    FhirCode? gender,
    Element? genderElement,
    FhirDate? birthDate,
    Element? birthDateElement,
    List<Address>? address,
    List<Attachment>? photo,
    Period? period,
    List<RelatedPersonCommunication>? communication,
  }) {
    return RelatedPerson(
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
      active: active ?? this.active,
      activeElement: activeElement ?? this.activeElement,
      patient: patient ?? this.patient,
      relationship: relationship ?? this.relationship,
      name: name ?? this.name,
      telecom: telecom ?? this.telecom,
      gender: gender ?? this.gender,
      genderElement: genderElement ?? this.genderElement,
      birthDate: birthDate ?? this.birthDate,
      birthDateElement: birthDateElement ?? this.birthDateElement,
      address: address ?? this.address,
      photo: photo ?? this.photo,
      period: period ?? this.period,
      communication: communication ?? this.communication,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [RelatedPersonCommunication] /// A language which may be used to communicate with about the patient's
/// health.
class RelatedPersonCommunication extends BackboneElement {
  RelatedPersonCommunication({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.language,
    this.preferred,
    this.preferredElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [language] /// The ISO-639-1 alpha 2 code in lower case for the language, optionally
  /// followed by a hyphen and the ISO-3166-1 alpha 2 code for the region in
  /// upper case; e.g. "en" for English, or "en-US" for American English versus
  /// "en-EN" for England English.
  final CodeableConcept language;

  /// [preferred] /// Indicates whether or not the patient prefers this language (over other
  /// languages he masters up a certain level).
  final FhirBoolean? preferred;
  final Element? preferredElement;
  @override
  RelatedPersonCommunication clone() => throw UnimplementedError();
  RelatedPersonCommunication copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? language,
    FhirBoolean? preferred,
    Element? preferredElement,
  }) {
    return RelatedPersonCommunication(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      language: language ?? this.language,
      preferred: preferred ?? this.preferred,
      preferredElement: preferredElement ?? this.preferredElement,
    );
  }
}
