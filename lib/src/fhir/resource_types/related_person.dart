import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'related_person.g.dart';

/// [RelatedPerson] /// Information about a person that is involved in the care for a patient, but
/// who is not the target of healthcare, nor has a formal responsibility in the
/// care process.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    R4ResourceType? resourceType,
  }) : super(
            resourceType: R4ResourceType.RelatedPerson,
            fhirType: 'RelatedPerson');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Identifier for a person within a particular scope.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [active] /// Whether this related person record is in active use.
  @JsonKey(name: 'active')
  final FhirBoolean? active;
  @JsonKey(name: '_active')
  final Element? activeElement;

  /// [patient] /// The patient this person is related to.
  @JsonKey(name: 'patient')
  final Reference patient;

  /// [relationship] /// The nature of the relationship between a patient and the related person.
  @JsonKey(name: 'relationship')
  final List<CodeableConcept>? relationship;

  /// [name] /// A name associated with the person.
  @JsonKey(name: 'name')
  final List<HumanName>? name;

  /// [telecom] /// A contact detail for the person, e.g. a telephone number or an email
  /// address.
  @JsonKey(name: 'telecom')
  final List<ContactPoint>? telecom;

  /// [gender] /// Administrative Gender - the gender that the person is considered to have
  /// for administration and record keeping purposes.
  @JsonKey(name: 'gender')
  final AdministrativeGender? gender;
  @JsonKey(name: '_gender')
  final Element? genderElement;

  /// [birthDate] /// The date on which the related person was born.
  @JsonKey(name: 'birthDate')
  final FhirDate? birthDate;
  @JsonKey(name: '_birthDate')
  final Element? birthDateElement;

  /// [address] /// Address where the related person can be contacted or visited.
  @JsonKey(name: 'address')
  final List<Address>? address;

  /// [photo] /// Image of the person.
  @JsonKey(name: 'photo')
  final List<Attachment>? photo;

  /// [period] /// The period of time during which this relationship is or was active. If
  /// there are no dates defined, then the interval is unknown.
  @JsonKey(name: 'period')
  final Period? period;

  /// [communication] /// A language which may be used to communicate with about the patient's
  /// health.
  @JsonKey(name: 'communication')
  final List<RelatedPersonCommunication>? communication;
  factory RelatedPerson.fromJson(Map<String, dynamic> json) =>
      _$RelatedPersonFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RelatedPersonToJson(this);

  @override
  RelatedPerson clone() => throw UnimplementedError();
  @override
  RelatedPerson copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    CommonLanguages? language,
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
    AdministrativeGender? gender,
    Element? genderElement,
    FhirDate? birthDate,
    Element? birthDateElement,
    List<Address>? address,
    List<Attachment>? photo,
    Period? period,
    List<RelatedPersonCommunication>? communication,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory RelatedPerson.fromYaml(dynamic yaml) => yaml is String
      ? RelatedPerson.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? RelatedPerson.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'RelatedPerson cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory RelatedPerson.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return RelatedPerson.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [RelatedPersonCommunication] /// A language which may be used to communicate with about the patient's
/// health.
@JsonSerializable()
class RelatedPersonCommunication extends BackboneElement {
  RelatedPersonCommunication({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.language,
    this.preferred,
    this.preferredElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'RelatedPersonCommunication');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [language] /// The ISO-639-1 alpha 2 code in lower case for the language, optionally
  /// followed by a hyphen and the ISO-3166-1 alpha 2 code for the region in
  /// upper case; e.g. "en" for English, or "en-US" for American English versus
  /// "en-EN" for England English.
  @JsonKey(name: 'language')
  final CommonLanguages language;

  /// [preferred] /// Indicates whether or not the patient prefers this language (over other
  /// languages he masters up a certain level).
  @JsonKey(name: 'preferred')
  final FhirBoolean? preferred;
  @JsonKey(name: '_preferred')
  final Element? preferredElement;
  factory RelatedPersonCommunication.fromJson(Map<String, dynamic> json) =>
      _$RelatedPersonCommunicationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RelatedPersonCommunicationToJson(this);

  @override
  RelatedPersonCommunication clone() => throw UnimplementedError();
  @override
  RelatedPersonCommunication copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CommonLanguages? language,
    FhirBoolean? preferred,
    Element? preferredElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return RelatedPersonCommunication(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      language: language ?? this.language,
      preferred: preferred ?? this.preferred,
      preferredElement: preferredElement ?? this.preferredElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory RelatedPersonCommunication.fromYaml(dynamic yaml) => yaml is String
      ? RelatedPersonCommunication.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? RelatedPersonCommunication.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'RelatedPersonCommunication cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory RelatedPersonCommunication.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return RelatedPersonCommunication.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
