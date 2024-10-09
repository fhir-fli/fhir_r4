import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(resourceType: R4ResourceType.RelatedPerson);

  @override
  String get fhirType => 'RelatedPerson';

  @Id()
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
  final AdministrativeGender? gender;
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
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.toJson();
    }
    if (implicitRulesElement != null) {
      json['_implicitRules'] = implicitRulesElement!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (text != null) {
      json['text'] = text!.toJson();
    }
    if (contained != null && contained!.isNotEmpty) {
      json['contained'] =
          contained!.map<dynamic>((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map<dynamic>((Identifier v) => v.toJson()).toList();
    }
    if (active?.value != null) {
      json['active'] = active!.toJson();
    }
    if (activeElement != null) {
      json['_active'] = activeElement!.toJson();
    }
    json['patient'] = patient.toJson();
    if (relationship != null && relationship!.isNotEmpty) {
      json['relationship'] = relationship!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    if (name != null && name!.isNotEmpty) {
      json['name'] = name!.map<dynamic>((HumanName v) => v.toJson()).toList();
    }
    if (telecom != null && telecom!.isNotEmpty) {
      json['telecom'] =
          telecom!.map<dynamic>((ContactPoint v) => v.toJson()).toList();
    }
    if (gender != null) {
      json['gender'] = gender!.toJson();
    }
    if (birthDate?.value != null) {
      json['birthDate'] = birthDate!.toJson();
    }
    if (birthDateElement != null) {
      json['_birthDate'] = birthDateElement!.toJson();
    }
    if (address != null && address!.isNotEmpty) {
      json['address'] =
          address!.map<dynamic>((Address v) => v.toJson()).toList();
    }
    if (photo != null && photo!.isNotEmpty) {
      json['photo'] =
          photo!.map<dynamic>((Attachment v) => v.toJson()).toList();
    }
    if (period != null) {
      json['period'] = period!.toJson();
    }
    if (communication != null && communication!.isNotEmpty) {
      json['communication'] = communication!
          .map<dynamic>((RelatedPersonCommunication v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory RelatedPerson.fromJson(Map<String, dynamic> json) {
    return RelatedPerson(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson(json['implicitRules'])
          : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(json['_implicitRules'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'])
          : null,
      languageElement: json['_language'] != null
          ? Element.fromJson(json['_language'] as Map<String, dynamic>)
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                  (dynamic v) => Resource.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                  (dynamic v) => Identifier.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      active:
          json['active'] != null ? FhirBoolean.fromJson(json['active']) : null,
      activeElement: json['_active'] != null
          ? Element.fromJson(json['_active'] as Map<String, dynamic>)
          : null,
      patient: Reference.fromJson(json['patient'] as Map<String, dynamic>),
      relationship: json['relationship'] != null
          ? (json['relationship'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      name: json['name'] != null
          ? (json['name'] as List<dynamic>)
              .map<HumanName>(
                  (dynamic v) => HumanName.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      telecom: json['telecom'] != null
          ? (json['telecom'] as List<dynamic>)
              .map<ContactPoint>((dynamic v) =>
                  ContactPoint.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      gender: json['gender'] != null
          ? AdministrativeGender.fromJson(json['gender'])
          : null,
      genderElement: json['_gender'] != null
          ? Element.fromJson(json['_gender'] as Map<String, dynamic>)
          : null,
      birthDate: json['birthDate'] != null
          ? FhirDate.fromJson(json['birthDate'])
          : null,
      birthDateElement: json['_birthDate'] != null
          ? Element.fromJson(json['_birthDate'] as Map<String, dynamic>)
          : null,
      address: json['address'] != null
          ? (json['address'] as List<dynamic>)
              .map<Address>(
                  (dynamic v) => Address.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      photo: json['photo'] != null
          ? (json['photo'] as List<dynamic>)
              .map<Attachment>(
                  (dynamic v) => Attachment.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      period: json['period'] != null
          ? Period.fromJson(json['period'] as Map<String, dynamic>)
          : null,
      communication: json['communication'] != null
          ? (json['communication'] as List<dynamic>)
              .map<RelatedPersonCommunication>((dynamic v) =>
                  RelatedPersonCommunication.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
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
  });

  @override
  String get fhirType => 'RelatedPersonCommunication';

  @Id()
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
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['language'] = language.toJson();
    if (preferred?.value != null) {
      json['preferred'] = preferred!.toJson();
    }
    if (preferredElement != null) {
      json['_preferred'] = preferredElement!.toJson();
    }
    return json;
  }

  factory RelatedPersonCommunication.fromJson(Map<String, dynamic> json) {
    return RelatedPersonCommunication(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      language:
          CodeableConcept.fromJson(json['language'] as Map<String, dynamic>),
      preferred: json['preferred'] != null
          ? FhirBoolean.fromJson(json['preferred'])
          : null,
      preferredElement: json['_preferred'] != null
          ? Element.fromJson(json['_preferred'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  RelatedPersonCommunication clone() => throw UnimplementedError();
  @override
  RelatedPersonCommunication copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? language,
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
