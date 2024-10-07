import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

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
  }) : super(resourceType: R4ResourceType.Person);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Identifier for a person within a particular scope.
  final List<Identifier>? identifier;

  /// [name] /// A name associated with the person.
  final List<HumanName>? name;

  /// [telecom] /// A contact detail for the person, e.g. a telephone number or an email
  /// address.
  final List<ContactPoint>? telecom;

  /// [gender] /// Administrative Gender.
  final FhirCode? gender;
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
  Person clone() => throw UnimplementedError();
  Person copy({
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [PersonLink] /// Link to a resource that concerns the same actual person.
class PersonLink extends BackboneElement {
  PersonLink({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.target,
    this.assurance,
    this.assuranceElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [target] /// The resource to which this actual person is associated.
  final Reference target;

  /// [assurance] /// Level of assurance that this link is associated with the target resource.
  final FhirCode? assurance;
  final Element? assuranceElement;
  @override
  PersonLink clone() => throw UnimplementedError();
  PersonLink copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? target,
    FhirCode? assurance,
    Element? assuranceElement,
  }) {
    return PersonLink(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      target: target ?? this.target,
      assurance: assurance ?? this.assurance,
      assuranceElement: assuranceElement ?? this.assuranceElement,
    );
  }
}
