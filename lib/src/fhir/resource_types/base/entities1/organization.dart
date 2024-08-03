// ignore_for_file: invalid_annotation_target
// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'organization.freezed.dart';
part 'organization.g.dart';

/// [Organization] A formally or informally recognized grouping of people or
@freezed
class Organization extends DomainResource with _$Organization {
  /// [Organization] A formally or informally recognized grouping of people or
  Organization._();

  /// [Organization] A formally or informally recognized grouping of people or
  /// organizations formed for the purpose of achieving some form of collective
  /// action.  Includes companies, institutions, corporations, departments,
  ///  community groups, healthcare practice groups, payer/insurer, etc.
  ///
  /// [resourceType] This is a Organization resource
  ///
  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  ///
  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  ///
  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  ///
  /// [implicitRulesElement] Extensions for implicitRules
  ///
  /// [language] The base language in which the resource is written.
  ///
  /// [languageElement] Extensions for language
  ///
  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  ///
  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the resource and that modifies the
  /// understanding of the element that contains it and/or the understanding of
  /// the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the definition
  /// and use of extensions. Though any implementer is allowed to define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [identifier] Identifier for the organization that is used to identify the
  ///  organization across multiple disparate systems.
  ///
  /// [active] Whether the organization's record is still in active use.
  ///
  /// [activeElement] Extensions for active
  ///
  /// [type] The kind(s) of organization that this is.
  ///
  /// [name] A name associated with the organization.
  ///
  /// [nameElement] Extensions for name
  ///
  /// [alias] A list of alternate names that the organization is known as, or
  ///  was known as in the past.
  ///
  /// [aliasElement] Extensions for alias
  ///
  /// [telecom] A contact detail for the organization.
  ///
  /// [address] An address for the organization.
  ///
  /// [partOf] The organization of which this organization forms a part.
  ///
  /// [contact] Contact for the organization for a certain purpose.
  ///
  /// [endpoint] Technical endpoints providing access to services operated for
  ///  the organization.
  const factory Organization({
    @Default(R4ResourceType.Organization)
    @JsonKey(unknownEnumValue: R4ResourceType.Organization)

    /// [resourceType] This is a Organization resource
    R4ResourceType resourceType,

    /// [id] The logical id of the resource, as used in the URL for the resource.
    ///  Once assigned, this value never changes.
    String? id,

    /// [meta] The metadata about the resource. This is content that is
    /// maintained by the infrastructure. Changes to the content might not always
    ///  be associated with version changes to the resource.
    FhirMeta? meta,

    /// [implicitRules] A reference to a set of rules that were followed when the
    /// resource was constructed, and which must be understood when processing the
    /// content. Often, this is a reference to an implementation guide that
    ///  defines the special rules along with other profiles etc.
    FhirUri? implicitRules,

    /// [implicitRulesElement] Extensions for implicitRules
    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,

    /// [language] The base language in which the resource is written.
    FhirCode? language,

    /// [languageElement] Extensions for language
    @JsonKey(name: '_language') PrimitiveElement? languageElement,

    /// [text] A human-readable narrative that contains a summary of the resource
    /// and can be used to represent the content of the resource to a human. The
    /// narrative need not encode all the structured data, but is required to
    /// contain sufficient detail to make it "clinically safe" for a human to just
    /// read the narrative. Resource definitions may define what content should be
    ///  represented in the narrative to ensure clinical safety.
    Narrative? text,

    /// [contained] These resources do not have an independent existence apart
    /// from the resource that contains them - they cannot be identified
    /// independently, and nor can they have their own independent transaction
    ///  scope.
    List<Resource>? contained,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the resource. To make the use of
    /// extensions safe and manageable, there is a strict set of governance
    /// applied to the definition and use of extensions. Though any implementer
    /// can define an extension, there is a set of requirements that SHALL be met
    ///  as part of the definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the resource and that modifies the
    /// understanding of the element that contains it and/or the understanding of
    /// the containing element's descendants. Usually modifier elements provide
    /// negation or qualification. To make the use of extensions safe and
    /// manageable, there is a strict set of governance applied to the definition
    /// and use of extensions. Though any implementer is allowed to define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [identifier] Identifier for the organization that is used to identify the
    ///  organization across multiple disparate systems.
    List<Identifier>? identifier,

    /// [active] Whether the organization's record is still in active use.
    FhirBoolean? active,

    /// [activeElement] Extensions for active
    @JsonKey(name: '_active') PrimitiveElement? activeElement,

    /// [type] The kind(s) of organization that this is.
    List<CodeableConcept>? type,

    /// [name] A name associated with the organization.
    String? name,

    /// [nameElement] Extensions for name
    @JsonKey(name: '_name') PrimitiveElement? nameElement,

    /// [alias] A list of alternate names that the organization is known as, or
    ///  was known as in the past.
    List<String>? alias,

    /// [aliasElement] Extensions for alias
    @JsonKey(name: '_alias') List<PrimitiveElement>? aliasElement,

    /// [telecom] A contact detail for the organization.
    List<ContactPoint>? telecom,

    /// [address] An address for the organization.
    List<Address>? address,

    /// [partOf] The organization of which this organization forms a part.
    Reference? partOf,

    /// [contact] Contact for the organization for a certain purpose.
    List<OrganizationContact>? contact,

    /// [endpoint] Technical endpoints providing access to services operated for
    ///  the organization.
    List<Reference>? endpoint,
  }) = _Organization;

  @override
  String get fhirType => 'Organization';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Organization.fromYaml(dynamic yaml) => yaml is String
      ? Organization.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Organization.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Organization cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Organization.fromJson(Map<String, dynamic> json) =>
      _$OrganizationFromJson(json);

  /// Acts like a constructor, returns a [Organization], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Organization.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$OrganizationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  Organization updateContactPointSystem(ContactPointSystem system,
      [int index = 0]) {
    if (telecom == null || telecom!.isEmpty) {
      return copyWith(telecom: <ContactPoint>[ContactPoint(system: system)]);
    } else if (index >= telecom!.length) {
      return copyWith(
          telecom: <ContactPoint>[...telecom!, ContactPoint(system: system)]);
    } else {
      return copyWith(telecom: <ContactPoint>[
        ...telecom!.sublist(0, index),
        telecom![index].copyWith(system: system),
        ...telecom!.sublist(index + 1)
      ]);
    }
  }

  Organization updateContactPointValue(String value, [int index = 0]) {
    if (telecom == null || telecom!.isEmpty) {
      return copyWith(telecom: <ContactPoint>[ContactPoint(value: value)]);
    } else if (index >= telecom!.length) {
      return copyWith(
          telecom: <ContactPoint>[...telecom!, ContactPoint(value: value)]);
    } else {
      return copyWith(telecom: <ContactPoint>[
        ...telecom!.sublist(0, index),
        telecom![index].copyWith(value: value),
        ...telecom!.sublist(index + 1)
      ]);
    }
  }

  Organization updateContactPointUse(ContactPointUse use, [int index = 0]) {
    if (telecom == null || telecom!.isEmpty) {
      return copyWith(telecom: <ContactPoint>[ContactPoint(use: use)]);
    } else if (index >= telecom!.length) {
      return copyWith(
          telecom: <ContactPoint>[...telecom!, ContactPoint(use: use)]);
    } else {
      return copyWith(telecom: <ContactPoint>[
        ...telecom!.sublist(0, index),
        telecom![index].copyWith(use: use),
        ...telecom!.sublist(index + 1)
      ]);
    }
  }

  Organization updateContactPointRank(FhirPositiveInt rank, [int index = 0]) {
    if (telecom == null || telecom!.isEmpty) {
      return copyWith(telecom: <ContactPoint>[ContactPoint(rank: rank)]);
    } else if (index >= telecom!.length) {
      return copyWith(
          telecom: <ContactPoint>[...telecom!, ContactPoint(rank: rank)]);
    } else {
      return copyWith(telecom: <ContactPoint>[
        ...telecom!.sublist(0, index),
        telecom![index].copyWith(rank: rank),
        ...telecom!.sublist(index + 1)
      ]);
    }
  }

  Organization updateContactPointPeriod(Period period, [int index = 0]) {
    if (telecom == null || telecom!.isEmpty) {
      return copyWith(telecom: <ContactPoint>[ContactPoint(period: period)]);
    } else if (index >= telecom!.length) {
      return copyWith(
          telecom: <ContactPoint>[...telecom!, ContactPoint(period: period)]);
    } else {
      return copyWith(telecom: <ContactPoint>[
        ...telecom!.sublist(0, index),
        telecom![index].copyWith(period: period),
        ...telecom!.sublist(index + 1)
      ]);
    }
  }

  Organization updateAddressUse(AddressUse use, [int index = 0]) {
    if (address == null || address!.isEmpty) {
      return copyWith(address: <Address>[Address(use: use)]);
    } else if (index >= address!.length) {
      return copyWith(address: <Address>[...address!, Address(use: use)]);
    } else {
      return copyWith(address: <Address>[
        ...address!.sublist(0, index),
        address![index].copyWith(use: use),
        ...address!.sublist(index + 1)
      ]);
    }
  }

  Organization updateAddressType(AddressType type, [int index = 0]) {
    if (address == null || address!.isEmpty) {
      return copyWith(address: <Address>[Address(type: type)]);
    } else if (index >= address!.length) {
      return copyWith(address: <Address>[...address!, Address(type: type)]);
    } else {
      return copyWith(address: <Address>[
        ...address!.sublist(0, index),
        address![index].copyWith(type: type),
        ...address!.sublist(index + 1)
      ]);
    }
  }

  Organization updateAddressText(String text, [int index = 0]) {
    if (address == null || address!.isEmpty) {
      return copyWith(address: <Address>[Address(text: text)]);
    } else if (index >= address!.length) {
      return copyWith(address: <Address>[...address!, Address(text: text)]);
    } else {
      return copyWith(address: <Address>[
        ...address!.sublist(0, index),
        address![index].copyWith(text: text),
        ...address!.sublist(index + 1)
      ]);
    }
  }

  Organization updateAddressLine(List<String> line, [int index = 0]) {
    if (address == null || address!.isEmpty) {
      return copyWith(address: <Address>[Address(line: line)]);
    } else if (index >= address!.length) {
      return copyWith(address: <Address>[...address!, Address(line: line)]);
    } else {
      return copyWith(address: <Address>[
        ...address!.sublist(0, index),
        address![index].copyWith(line: line),
        ...address!.sublist(index + 1)
      ]);
    }
  }

  Organization updateAddressCity(String city, [int index = 0]) {
    if (address == null || address!.isEmpty) {
      return copyWith(address: <Address>[Address(city: city)]);
    } else if (index >= address!.length) {
      return copyWith(address: <Address>[...address!, Address(city: city)]);
    } else {
      return copyWith(address: <Address>[
        ...address!.sublist(0, index),
        address![index].copyWith(city: city),
        ...address!.sublist(index + 1)
      ]);
    }
  }

  Organization updateAddressDistrict(String district, [int index = 0]) {
    if (address == null || address!.isEmpty) {
      return copyWith(address: <Address>[Address(district: district)]);
    } else if (index >= address!.length) {
      return copyWith(
          address: <Address>[...address!, Address(district: district)]);
    } else {
      return copyWith(address: <Address>[
        ...address!.sublist(0, index),
        address![index].copyWith(district: district),
        ...address!.sublist(index + 1)
      ]);
    }
  }

  Organization updateAddressState(String state, [int index = 0]) {
    if (address == null || address!.isEmpty) {
      return copyWith(address: <Address>[Address(state: state)]);
    } else if (index >= address!.length) {
      return copyWith(address: <Address>[...address!, Address(state: state)]);
    } else {
      return copyWith(address: <Address>[
        ...address!.sublist(0, index),
        address![index].copyWith(state: state),
        ...address!.sublist(index + 1)
      ]);
    }
  }

  Organization updateAddressPostalCode(String postalCode, [int index = 0]) {
    if (address == null || address!.isEmpty) {
      return copyWith(address: <Address>[Address(postalCode: postalCode)]);
    } else if (index >= address!.length) {
      return copyWith(
          address: <Address>[...address!, Address(postalCode: postalCode)]);
    } else {
      return copyWith(address: <Address>[
        ...address!.sublist(0, index),
        address![index].copyWith(postalCode: postalCode),
        ...address!.sublist(index + 1)
      ]);
    }
  }

  Organization updateAddressCountry(String country, [int index = 0]) {
    if (address == null || address!.isEmpty) {
      return copyWith(address: <Address>[Address(country: country)]);
    } else if (index >= address!.length) {
      return copyWith(
          address: <Address>[...address!, Address(country: country)]);
    } else {
      return copyWith(address: <Address>[
        ...address!.sublist(0, index),
        address![index].copyWith(country: country),
        ...address!.sublist(index + 1)
      ]);
    }
  }

  Organization updateAddressPeriod(Period period, [int index = 0]) {
    if (address == null || address!.isEmpty) {
      return copyWith(address: <Address>[Address(period: period)]);
    } else if (index >= address!.length) {
      return copyWith(address: <Address>[...address!, Address(period: period)]);
    } else {
      return copyWith(address: <Address>[
        ...address!.sublist(0, index),
        address![index].copyWith(period: period),
        ...address!.sublist(index + 1)
      ]);
    }
  }

  @override
  Resource newId() => copyWith(id: generateNewUuidString());

  @override
  Resource newIdIfNoId() => id == null ? newId() : this;

  @override
  String get path => '$fhirType/$id';

  @override
  String get resourceTypeString => fhirType;

  @override
  Reference get thisReference =>
      Reference(reference: path, type: FhirUri(resourceTypeString));

  @override
  String toYaml() => json2yaml(toJson());

  @override
  Resource updateVersion({FhirMeta? oldMeta, bool versionIdAsTime = false}) =>
      copyWith(meta: updateFhirMetaVersion(oldMeta ?? meta, versionIdAsTime));
}

/// [OrganizationContact] A formally or informally recognized grouping of
@freezed
class OrganizationContact extends BackboneElement with _$OrganizationContact {
  /// [OrganizationContact] A formally or informally recognized grouping of
  OrganizationContact._();

  /// [OrganizationContact] A formally or informally recognized grouping of
  /// people or organizations formed for the purpose of achieving some form of
  /// collective action.  Includes companies, institutions, corporations,
  /// departments, community groups, healthcare practice groups, payer/insurer,
  ///  etc.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [purpose] Indicates a purpose for which the contact can be reached.
  ///
  /// [name] A name associated with the contact.
  ///
  /// [telecom] A contact detail (e.g. a telephone number or an email address)
  ///  by which the party may be contacted.
  ///
  /// [address] Visiting or postal addresses for the contact.
  const factory OrganizationContact({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [purpose] Indicates a purpose for which the contact can be reached.
    CodeableConcept? purpose,

    /// [name] A name associated with the contact.
    HumanName? name,

    /// [telecom] A contact detail (e.g. a telephone number or an email address)
    ///  by which the party may be contacted.
    List<ContactPoint>? telecom,

    /// [address] Visiting or postal addresses for the contact.
    Address? address,
  }) = _OrganizationContact;

  @override
  String get fhirType => 'OrganizationContact';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory OrganizationContact.fromYaml(dynamic yaml) => yaml is String
      ? OrganizationContact.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? OrganizationContact.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'OrganizationContact cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory OrganizationContact.fromJson(Map<String, dynamic> json) =>
      _$OrganizationContactFromJson(json);

  /// Acts like a constructor, returns a [OrganizationContact], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory OrganizationContact.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$OrganizationContactFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());

  OrganizationContact updateHumanNameUse(HumanNameUse use) =>
      copyWith(name: name == null ? HumanName(use: use) : name!.updateUse(use));

  OrganizationContact updateHumanNameText(String text) => copyWith(
      name: name == null ? HumanName(text: text) : name!.updateText(text));

  OrganizationContact updateHumanNameFamily(String family) => copyWith(
      name: name == null
          ? HumanName(family: family)
          : name!.updateFamily(family));

  OrganizationContact updateHumanNameGiven(List<String> given) => copyWith(
      name: name == null ? HumanName(given: given) : name!.updateGiven(given));

  OrganizationContact updateHumanNamePrefix(List<String> prefix) => copyWith(
      name: name == null
          ? HumanName(prefix: prefix)
          : name!.updatePrefix(prefix));

  OrganizationContact updateHumanNameSuffix(List<String> suffix) => copyWith(
      name: name == null
          ? HumanName(suffix: suffix)
          : name!.updateSuffix(suffix));

  OrganizationContact updateHumanNamePeriod(Period period) => copyWith(
      name: name == null
          ? HumanName(period: period)
          : name!.updatePeriod(period));

  OrganizationContact updateContactPointSystem(ContactPointSystem system,
      [int index = 0]) {
    if (telecom == null || telecom!.isEmpty) {
      return copyWith(telecom: <ContactPoint>[ContactPoint(system: system)]);
    } else if (index >= telecom!.length) {
      return copyWith(
          telecom: <ContactPoint>[...telecom!, ContactPoint(system: system)]);
    } else {
      return copyWith(telecom: <ContactPoint>[
        ...telecom!.sublist(0, index),
        telecom![index].copyWith(system: system),
        ...telecom!.sublist(index + 1)
      ]);
    }
  }

  OrganizationContact updateContactPointValue(String value, [int index = 0]) {
    if (telecom == null || telecom!.isEmpty) {
      return copyWith(telecom: <ContactPoint>[ContactPoint(value: value)]);
    } else if (index >= telecom!.length) {
      return copyWith(
          telecom: <ContactPoint>[...telecom!, ContactPoint(value: value)]);
    } else {
      return copyWith(telecom: <ContactPoint>[
        ...telecom!.sublist(0, index),
        telecom![index].copyWith(value: value),
        ...telecom!.sublist(index + 1)
      ]);
    }
  }

  OrganizationContact updateContactPointUse(ContactPointUse use,
      [int index = 0]) {
    if (telecom == null || telecom!.isEmpty) {
      return copyWith(telecom: <ContactPoint>[ContactPoint(use: use)]);
    } else if (index >= telecom!.length) {
      return copyWith(
          telecom: <ContactPoint>[...telecom!, ContactPoint(use: use)]);
    } else {
      return copyWith(telecom: <ContactPoint>[
        ...telecom!.sublist(0, index),
        telecom![index].copyWith(use: use),
        ...telecom!.sublist(index + 1)
      ]);
    }
  }

  OrganizationContact updateContactPointRank(FhirPositiveInt rank,
      [int index = 0]) {
    if (telecom == null || telecom!.isEmpty) {
      return copyWith(telecom: <ContactPoint>[ContactPoint(rank: rank)]);
    } else if (index >= telecom!.length) {
      return copyWith(
          telecom: <ContactPoint>[...telecom!, ContactPoint(rank: rank)]);
    } else {
      return copyWith(telecom: <ContactPoint>[
        ...telecom!.sublist(0, index),
        telecom![index].copyWith(rank: rank),
        ...telecom!.sublist(index + 1)
      ]);
    }
  }

  OrganizationContact updateContactPointPeriod(Period period, [int index = 0]) {
    if (telecom == null || telecom!.isEmpty) {
      return copyWith(telecom: <ContactPoint>[ContactPoint(period: period)]);
    } else if (index >= telecom!.length) {
      return copyWith(
          telecom: <ContactPoint>[...telecom!, ContactPoint(period: period)]);
    } else {
      return copyWith(telecom: <ContactPoint>[
        ...telecom!.sublist(0, index),
        telecom![index].copyWith(period: period),
        ...telecom!.sublist(index + 1)
      ]);
    }
  }

  OrganizationContact updateAddressUse(AddressUse use) => address == null
      ? copyWith(address: Address(use: use))
      : copyWith(address: address!.updateUse(use));

  OrganizationContact updateAddressType(AddressType type) => address == null
      ? copyWith(address: Address(type: type))
      : copyWith(address: address!.updateType(type));

  OrganizationContact updateAddressText(String text) => address == null
      ? copyWith(address: Address(text: text))
      : copyWith(address: address!.updateText(text));

  OrganizationContact updateAddressLine(List<String> line) => address == null
      ? copyWith(address: Address(line: line))
      : copyWith(address: address!.updateLine(line));

  OrganizationContact updateAddressCity(String city) => address == null
      ? copyWith(address: Address(city: city))
      : copyWith(address: address!.updateCity(city));

  OrganizationContact updateAddressDistrict(String district) => address == null
      ? copyWith(address: Address(district: district))
      : copyWith(address: address!.updateDistrict(district));

  OrganizationContact updateAddressState(String state) => address == null
      ? copyWith(address: Address(state: state))
      : copyWith(address: address!.updateState(state));

  OrganizationContact updateAddressPostalCode(String postalCode) =>
      address == null
          ? copyWith(address: Address(postalCode: postalCode))
          : copyWith(address: address!.updatePostalCode(postalCode));

  OrganizationContact updateAddressCountry(String country) => address == null
      ? copyWith(address: Address(country: country))
      : copyWith(address: address!.updateCountry(country));

  OrganizationContact updateAddressPeriod(Period period) => address == null
      ? copyWith(address: Address(period: period))
      : copyWith(address: address!.updatePeriod(period));
}
