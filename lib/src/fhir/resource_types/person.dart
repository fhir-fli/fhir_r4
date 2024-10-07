import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'person.g.dart';

/// [Person] /// Demographics and administrative information about a person independent of a
/// specific health-related context.
@JsonSerializable()
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
  }) : super(resourceType: R4ResourceType.Person, fhirType: 'Person');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Identifier for a person within a particular scope.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [name] /// A name associated with the person.
  @JsonKey(name: 'name')
  final List<HumanName>? name;

  /// [telecom] /// A contact detail for the person, e.g. a telephone number or an email
  /// address.
  @JsonKey(name: 'telecom')
  final List<ContactPoint>? telecom;

  /// [gender] /// Administrative Gender.
  @JsonKey(name: 'gender')
  final FhirCode? gender;
  @JsonKey(name: '_gender')
  final Element? genderElement;

  /// [birthDate] /// The birth date for the person.
  @JsonKey(name: 'birthDate')
  final FhirDate? birthDate;
  @JsonKey(name: '_birthDate')
  final Element? birthDateElement;

  /// [address] /// One or more addresses for the person.
  @JsonKey(name: 'address')
  final List<Address>? address;

  /// [photo] /// An image that can be displayed as a thumbnail of the person to enhance the
  /// identification of the individual.
  @JsonKey(name: 'photo')
  final Attachment? photo;

  /// [managingOrganization] /// The organization that is the custodian of the person record.
  @JsonKey(name: 'managingOrganization')
  final Reference? managingOrganization;

  /// [active] /// Whether this person's record is in active use.
  @JsonKey(name: 'active')
  final FhirBoolean? active;
  @JsonKey(name: '_active')
  final Element? activeElement;

  /// [link] /// Link to a resource that concerns the same actual person.
  @JsonKey(name: 'link')
  final List<PersonLink>? link;
  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PersonToJson(this);

  @override
  Person clone() => throw UnimplementedError();
  @override
  Person copyWith({
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
    List<HumanName>? name,
    List<ContactPoint>? telecom,
    FhirCode? gender,
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
@JsonSerializable()
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
  }) : super(fhirType: 'PersonLink');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [target] /// The resource to which this actual person is associated.
  @JsonKey(name: 'target')
  final Reference target;

  /// [assurance] /// Level of assurance that this link is associated with the target resource.
  @JsonKey(name: 'assurance')
  final FhirCode? assurance;
  @JsonKey(name: '_assurance')
  final Element? assuranceElement;
  factory PersonLink.fromJson(Map<String, dynamic> json) =>
      _$PersonLinkFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PersonLinkToJson(this);

  @override
  PersonLink clone() => throw UnimplementedError();
  @override
  PersonLink copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? target,
    FhirCode? assurance,
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
