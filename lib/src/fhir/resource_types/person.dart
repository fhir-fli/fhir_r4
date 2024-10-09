import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [Person] /// Demographics and administrative information about a person independent of a
/// specific health-related context.
class Person extends DomainResource {
  Person({
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
    this.name,
    this.telecom,
    this.gender,
    this.genderElement,
    this.birthDate,
    this.birthDateElement,
    this.address,
    this.photo,
    this.managingOrganization,
    this.active,
    this.activeElement,
    this.link,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(resourceType: R4ResourceType.Person);

  @override
  String get fhirType => 'Person';

  @Id()
  int dbId = 0;

  /// [identifier] /// Identifier for a person within a particular scope.
  final List<Identifier>? identifier;

  /// [name] /// A name associated with the person.
  final List<HumanName>? name;

  /// [telecom] /// A contact detail for the person, e.g. a telephone number or an email
  /// address.
  final List<ContactPoint>? telecom;

  /// [gender] /// Administrative Gender.
  final AdministrativeGender? gender;
  final Element? genderElement;

  /// [birthDate] /// The birth date for the person.
  final FhirDate? birthDate;
  final Element? birthDateElement;

  /// [address] /// One or more addresses for the person.
  final List<Address>? address;

  /// [photo] /// An image that can be displayed as a thumbnail of the person to enhance the
  /// identification of the individual.
  final Attachment? photo;

  /// [managingOrganization] /// The organization that is the custodian of the person record.
  final Reference? managingOrganization;

  /// [active] /// Whether this person's record is in active use.
  final FhirBoolean? active;
  final Element? activeElement;

  /// [link] /// Link to a resource that concerns the same actual person.
  final List<PersonLink>? link;
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
    if (photo != null) {
      json['photo'] = photo!.toJson();
    }
    if (managingOrganization != null) {
      json['managingOrganization'] = managingOrganization!.toJson();
    }
    if (active?.value != null) {
      json['active'] = active!.toJson();
    }
    if (activeElement != null) {
      json['_active'] = activeElement!.toJson();
    }
    if (link != null && link!.isNotEmpty) {
      json['link'] = link!.map<dynamic>((PersonLink v) => v.toJson()).toList();
    }
    return json;
  }

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
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
          ? Attachment.fromJson(json['photo'] as Map<String, dynamic>)
          : null,
      managingOrganization: json['managingOrganization'] != null
          ? Reference.fromJson(
              json['managingOrganization'] as Map<String, dynamic>)
          : null,
      active:
          json['active'] != null ? FhirBoolean.fromJson(json['active']) : null,
      activeElement: json['_active'] != null
          ? Element.fromJson(json['_active'] as Map<String, dynamic>)
          : null,
      link: json['link'] != null
          ? (json['link'] as List<dynamic>)
              .map<PersonLink>(
                  (dynamic v) => PersonLink.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  Person clone() => throw UnimplementedError();
  @override
  Person copyWith({
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
    List<HumanName>? name,
    List<ContactPoint>? telecom,
    AdministrativeGender? gender,
    Element? genderElement,
    FhirDate? birthDate,
    Element? birthDateElement,
    List<Address>? address,
    Attachment? photo,
    Reference? managingOrganization,
    FhirBoolean? active,
    Element? activeElement,
    List<PersonLink>? link,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return Person(
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
      name: name ?? this.name,
      telecom: telecom ?? this.telecom,
      gender: gender ?? this.gender,
      genderElement: genderElement ?? this.genderElement,
      birthDate: birthDate ?? this.birthDate,
      birthDateElement: birthDateElement ?? this.birthDateElement,
      address: address ?? this.address,
      photo: photo ?? this.photo,
      managingOrganization: managingOrganization ?? this.managingOrganization,
      active: active ?? this.active,
      activeElement: activeElement ?? this.activeElement,
      link: link ?? this.link,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory Person.fromYaml(dynamic yaml) => yaml is String
      ? Person.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? Person.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'Person cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory Person.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Person.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [PersonLink] /// Link to a resource that concerns the same actual person.
class PersonLink extends BackboneElement {
  PersonLink({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.target,
    this.assurance,
    this.assuranceElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'PersonLink';

  @Id()
  int dbId = 0;

  /// [target] /// The resource to which this actual person is associated.
  final Reference target;

  /// [assurance] /// Level of assurance that this link is associated with the target resource.
  final IdentityAssuranceLevel? assurance;
  final Element? assuranceElement;
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
    json['target'] = target.toJson();
    if (assurance != null) {
      json['assurance'] = assurance!.toJson();
    }
    return json;
  }

  factory PersonLink.fromJson(Map<String, dynamic> json) {
    return PersonLink(
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
      target: Reference.fromJson(json['target'] as Map<String, dynamic>),
      assurance: json['assurance'] != null
          ? IdentityAssuranceLevel.fromJson(json['assurance'])
          : null,
      assuranceElement: json['_assurance'] != null
          ? Element.fromJson(json['_assurance'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  PersonLink clone() => throw UnimplementedError();
  @override
  PersonLink copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? target,
    IdentityAssuranceLevel? assurance,
    Element? assuranceElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return PersonLink(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      target: target ?? this.target,
      assurance: assurance ?? this.assurance,
      assuranceElement: assuranceElement ?? this.assuranceElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory PersonLink.fromYaml(dynamic yaml) => yaml is String
      ? PersonLink.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? PersonLink.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'PersonLink cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory PersonLink.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return PersonLink.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
