// ignore_for_file: invalid_annotation_target
// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'insurance_plan.freezed.dart';
part 'insurance_plan.g.dart';

/// [InsurancePlan] Details of a Health Insurance product/plan provided by an
@freezed
class InsurancePlan with _$InsurancePlan implements DomainResource {
  /// [InsurancePlan] Details of a Health Insurance product/plan provided by an
  const InsurancePlan._();

  /// [InsurancePlan] Details of a Health Insurance product/plan provided by an
  ///  organization.
  ///
  /// [resourceType] This is a InsurancePlan resource
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
  /// [identifier] Business identifiers assigned to this health insurance
  /// product which remain constant as the resource is updated and propagates
  ///  from server to server.
  ///
  /// [status] The current state of the health insurance product.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [type] The kind of health insurance product.
  ///
  /// [name] Official name of the health insurance product as designated by the
  ///  owner.
  ///
  /// [nameElement] Extensions for name
  ///
  /// [alias] A list of alternate names that the product is known as, or was
  ///  known as in the past.
  ///
  /// [aliasElement] Extensions for alias
  ///
  /// [period] The period of time that the health insurance product is
  ///  available.
  ///
  /// [ownedBy] The entity that is providing  the health insurance product and
  /// underwriting the risk.  This is typically an insurance carriers, other
  /// third-party payers, or health plan sponsors comonly referred to as
  ///  'payers'.
  ///
  /// [administeredBy] An organization which administer other services such as
  /// underwriting, customer service and/or claims processing on behalf of the
  ///  health insurance product owner.
  ///
  /// [coverageArea] The geographic region in which a health insurance
  ///  product's benefits apply.
  ///
  /// [contact] The contact for the health insurance product for a certain
  ///  purpose.
  ///
  /// [endpoint] The technical endpoints providing access to services operated
  ///  for the health insurance product.
  ///
  /// [network] Reference to the network included in the health insurance
  ///  product.
  ///
  /// [coverage] Details about the coverage offered by the insurance product.
  ///
  /// [plan] Details about an insurance plan.
  const factory InsurancePlan({
    @Default(R4ResourceType.InsurancePlan)
    @JsonKey(unknownEnumValue: R4ResourceType.InsurancePlan)

    /// [resourceType] This is a InsurancePlan resource
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

    /// [identifier] Business identifiers assigned to this health insurance
    /// product which remain constant as the resource is updated and propagates
    ///  from server to server.
    List<Identifier>? identifier,

    /// [status] The current state of the health insurance product.
    FhirCode? status,

    /// [statusElement] Extensions for status
    @JsonKey(name: '_status') PrimitiveElement? statusElement,

    /// [type] The kind of health insurance product.
    List<CodeableConcept>? type,

    /// [name] Official name of the health insurance product as designated by the
    ///  owner.
    String? name,

    /// [nameElement] Extensions for name
    @JsonKey(name: '_name') PrimitiveElement? nameElement,

    /// [alias] A list of alternate names that the product is known as, or was
    ///  known as in the past.
    List<String>? alias,

    /// [aliasElement] Extensions for alias
    @JsonKey(name: '_alias') List<PrimitiveElement>? aliasElement,

    /// [period] The period of time that the health insurance product is
    ///  available.
    Period? period,

    /// [ownedBy] The entity that is providing  the health insurance product and
    /// underwriting the risk.  This is typically an insurance carriers, other
    /// third-party payers, or health plan sponsors comonly referred to as
    ///  'payers'.
    Reference? ownedBy,

    /// [administeredBy] An organization which administer other services such as
    /// underwriting, customer service and/or claims processing on behalf of the
    ///  health insurance product owner.
    Reference? administeredBy,

    /// [coverageArea] The geographic region in which a health insurance
    ///  product's benefits apply.
    List<Reference>? coverageArea,

    /// [contact] The contact for the health insurance product for a certain
    ///  purpose.
    List<InsurancePlanContact>? contact,

    /// [endpoint] The technical endpoints providing access to services operated
    ///  for the health insurance product.
    List<Reference>? endpoint,

    /// [network] Reference to the network included in the health insurance
    ///  product.
    List<Reference>? network,

    /// [coverage] Details about the coverage offered by the insurance product.
    List<InsurancePlanCoverage>? coverage,

    /// [plan] Details about an insurance plan.
    List<InsurancePlanPlan>? plan,
  }) = _InsurancePlan;

  @override
  String get fhirType => 'InsurancePlan';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory InsurancePlan.fromYaml(dynamic yaml) => yaml is String
      ? InsurancePlan.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? InsurancePlan.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'InsurancePlan cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory InsurancePlan.fromJson(Map<String, dynamic> json) =>
      _$InsurancePlanFromJson(json);

  /// Acts like a constructor, returns a [InsurancePlan], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory InsurancePlan.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$InsurancePlanFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());

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
  Resource updateVersion({FhirMeta? oldMeta}) =>
      copyWith(meta: updateFhirMetaVersion(meta));
}

/// [InsurancePlanContact] Details of a Health Insurance product/plan
@freezed

/// [InsurancePlanContact] Details of a Health Insurance product/plan
@freezed
class InsurancePlanContact
    with _$InsurancePlanContact
    implements BackboneElement {
  /// [InsurancePlanContact] Details of a Health Insurance product/plan
  const InsurancePlanContact._();

  /// [InsurancePlanContact] Details of a Health Insurance product/plan
  ///  provided by an organization.
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
  const factory InsurancePlanContact({
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
  }) = _InsurancePlanContact;

  @override
  String get fhirType => 'InsurancePlanContact';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory InsurancePlanContact.fromYaml(dynamic yaml) => yaml is String
      ? InsurancePlanContact.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? InsurancePlanContact.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'InsurancePlanContact cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory InsurancePlanContact.fromJson(Map<String, dynamic> json) =>
      _$InsurancePlanContactFromJson(json);

  /// Acts like a constructor, returns a [InsurancePlanContact], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory InsurancePlanContact.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$InsurancePlanContactFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());

  InsurancePlanContact updateHumanNameUse(HumanNameUse use) =>
      copyWith(name: name == null ? HumanName(use: use) : name!.updateUse(use));

  InsurancePlanContact updateHumanNameText(String text) => copyWith(
      name: name == null ? HumanName(text: text) : name!.updateText(text));

  InsurancePlanContact updateHumanNameFamily(String family) => copyWith(
      name: name == null
          ? HumanName(family: family)
          : name!.updateFamily(family));

  InsurancePlanContact updateHumanNameGiven(List<String> given) => copyWith(
      name: name == null ? HumanName(given: given) : name!.updateGiven(given));

  InsurancePlanContact updateHumanNamePrefix(List<String> prefix) => copyWith(
      name: name == null
          ? HumanName(prefix: prefix)
          : name!.updatePrefix(prefix));

  InsurancePlanContact updateHumanNameSuffix(List<String> suffix) => copyWith(
      name: name == null
          ? HumanName(suffix: suffix)
          : name!.updateSuffix(suffix));

  InsurancePlanContact updateHumanNamePeriod(Period period) => copyWith(
      name: name == null
          ? HumanName(period: period)
          : name!.updatePeriod(period));

  InsurancePlanContact updateContactPointSystem(ContactPointSystem system,
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

  InsurancePlanContact updateContactPointValue(String value, [int index = 0]) {
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

  InsurancePlanContact updateContactPointUse(ContactPointUse use,
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

  InsurancePlanContact updateContactPointRank(FhirPositiveInt rank,
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

  InsurancePlanContact updateContactPointPeriod(Period period,
      [int index = 0]) {
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

  InsurancePlanContact updateAddressUse(AddressUse use) => address == null
      ? copyWith(address: Address(use: use))
      : copyWith(address: address!.updateUse(use));

  InsurancePlanContact updateAddressType(AddressType type) => address == null
      ? copyWith(address: Address(type: type))
      : copyWith(address: address!.updateType(type));

  InsurancePlanContact updateAddressText(String text) => address == null
      ? copyWith(address: Address(text: text))
      : copyWith(address: address!.updateText(text));

  InsurancePlanContact updateAddressLine(List<String> line) => address == null
      ? copyWith(address: Address(line: line))
      : copyWith(address: address!.updateLine(line));

  InsurancePlanContact updateAddressCity(String city) => address == null
      ? copyWith(address: Address(city: city))
      : copyWith(address: address!.updateCity(city));

  InsurancePlanContact updateAddressDistrict(String district) => address == null
      ? copyWith(address: Address(district: district))
      : copyWith(address: address!.updateDistrict(district));

  InsurancePlanContact updateAddressState(String state) => address == null
      ? copyWith(address: Address(state: state))
      : copyWith(address: address!.updateState(state));

  InsurancePlanContact updateAddressPostalCode(String postalCode) =>
      address == null
          ? copyWith(address: Address(postalCode: postalCode))
          : copyWith(address: address!.updatePostalCode(postalCode));

  InsurancePlanContact updateAddressCountry(String country) => address == null
      ? copyWith(address: Address(country: country))
      : copyWith(address: address!.updateCountry(country));

  InsurancePlanContact updateAddressPeriod(Period period) => address == null
      ? copyWith(address: Address(period: period))
      : copyWith(address: address!.updatePeriod(period));
}

/// [InsurancePlanCoverage] Details of a Health Insurance product/plan
@freezed

/// [InsurancePlanCoverage] Details of a Health Insurance product/plan
@freezed
class InsurancePlanCoverage
    with _$InsurancePlanCoverage
    implements BackboneElement {
  /// [InsurancePlanCoverage] Details of a Health Insurance product/plan
  const InsurancePlanCoverage._();

  /// [InsurancePlanCoverage] Details of a Health Insurance product/plan
  ///  provided by an organization.
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
  /// [type] Type of coverage  (Medical; Dental; Mental Health; Substance
  ///  Abuse; Vision; Drug; Short Term; Long Term Care; Hospice; Home Health).
  ///
  /// [network] Reference to the network that providing the type of coverage.
  ///
  /// [benefit] Specific benefits under this type of coverage.
  const factory InsurancePlanCoverage({
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

    /// [type] Type of coverage  (Medical; Dental; Mental Health; Substance
    ///  Abuse; Vision; Drug; Short Term; Long Term Care; Hospice; Home Health).
    required CodeableConcept type,

    /// [network] Reference to the network that providing the type of coverage.
    List<Reference>? network,

    /// [benefit] Specific benefits under this type of coverage.
    required List<InsurancePlanBenefit> benefit,
  }) = _InsurancePlanCoverage;

  @override
  String get fhirType => 'InsurancePlanCoverage';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory InsurancePlanCoverage.fromYaml(dynamic yaml) => yaml is String
      ? InsurancePlanCoverage.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? InsurancePlanCoverage.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'InsurancePlanCoverage cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory InsurancePlanCoverage.fromJson(Map<String, dynamic> json) =>
      _$InsurancePlanCoverageFromJson(json);

  /// Acts like a constructor, returns a [InsurancePlanCoverage], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory InsurancePlanCoverage.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$InsurancePlanCoverageFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [InsurancePlanBenefit] Details of a Health Insurance product/plan
@freezed

/// [InsurancePlanBenefit] Details of a Health Insurance product/plan
@freezed
class InsurancePlanBenefit
    with _$InsurancePlanBenefit
    implements BackboneElement {
  /// [InsurancePlanBenefit] Details of a Health Insurance product/plan
  const InsurancePlanBenefit._();

  /// [InsurancePlanBenefit] Details of a Health Insurance product/plan
  ///  provided by an organization.
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
  /// [type] Type of benefit (primary care; speciality care; inpatient;
  ///  outpatient).
  ///
  /// [requirement] The referral requirements to have access/coverage for this
  ///  benefit.
  ///
  /// [requirementElement] Extensions for requirement
  ///
  /// [limit] The specific limits on the benefit.
  const factory InsurancePlanBenefit({
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

    /// [type] Type of benefit (primary care; speciality care; inpatient;
    ///  outpatient).
    required CodeableConcept type,

    /// [requirement] The referral requirements to have access/coverage for this
    ///  benefit.
    String? requirement,

    /// [requirementElement] Extensions for requirement
    @JsonKey(name: '_requirement') PrimitiveElement? requirementElement,

    /// [limit] The specific limits on the benefit.
    List<InsurancePlanLimit>? limit,
  }) = _InsurancePlanBenefit;

  @override
  String get fhirType => 'InsurancePlanBenefit';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory InsurancePlanBenefit.fromYaml(dynamic yaml) => yaml is String
      ? InsurancePlanBenefit.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? InsurancePlanBenefit.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'InsurancePlanBenefit cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory InsurancePlanBenefit.fromJson(Map<String, dynamic> json) =>
      _$InsurancePlanBenefitFromJson(json);

  /// Acts like a constructor, returns a [InsurancePlanBenefit], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory InsurancePlanBenefit.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$InsurancePlanBenefitFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [InsurancePlanLimit] Details of a Health Insurance product/plan provided
@freezed

/// [InsurancePlanLimit] Details of a Health Insurance product/plan provided
@freezed
class InsurancePlanLimit with _$InsurancePlanLimit implements BackboneElement {
  /// [InsurancePlanLimit] Details of a Health Insurance product/plan provided
  const InsurancePlanLimit._();

  /// [InsurancePlanLimit] Details of a Health Insurance product/plan provided
  ///  by an organization.
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
  /// [value] The maximum amount of a service item a plan will pay for a
  ///  covered benefit.  For examples. wellness visits, or eyeglasses.
  ///
  /// [code] The specific limit on the benefit.
  const factory InsurancePlanLimit({
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

    /// [value] The maximum amount of a service item a plan will pay for a
    ///  covered benefit.  For examples. wellness visits, or eyeglasses.
    Quantity? value,

    /// [code] The specific limit on the benefit.
    CodeableConcept? code,
  }) = _InsurancePlanLimit;

  @override
  String get fhirType => 'InsurancePlanLimit';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory InsurancePlanLimit.fromYaml(dynamic yaml) => yaml is String
      ? InsurancePlanLimit.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? InsurancePlanLimit.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'InsurancePlanLimit cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory InsurancePlanLimit.fromJson(Map<String, dynamic> json) =>
      _$InsurancePlanLimitFromJson(json);

  /// Acts like a constructor, returns a [InsurancePlanLimit], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory InsurancePlanLimit.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$InsurancePlanLimitFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [InsurancePlanPlan] Details of a Health Insurance product/plan provided
@freezed

/// [InsurancePlanPlan] Details of a Health Insurance product/plan provided
@freezed
class InsurancePlanPlan with _$InsurancePlanPlan implements BackboneElement {
  /// [InsurancePlanPlan] Details of a Health Insurance product/plan provided
  const InsurancePlanPlan._();

  /// [InsurancePlanPlan] Details of a Health Insurance product/plan provided
  ///  by an organization.
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
  /// [identifier] Business identifiers assigned to this health insurance plan
  /// which remain constant as the resource is updated and propagates from
  ///  server to server.
  ///
  /// [type] Type of plan. For example, "Platinum" or "High Deductable".
  ///
  /// [coverageArea] The geographic region in which a health insurance plan's
  ///  benefits apply.
  ///
  /// [network] Reference to the network that providing the type of coverage.
  ///
  /// [generalCost] Overall costs associated with the plan.
  ///
  /// [specificCost] Costs associated with the coverage provided by the
  ///  product.
  const factory InsurancePlanPlan({
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

    /// [identifier] Business identifiers assigned to this health insurance plan
    /// which remain constant as the resource is updated and propagates from
    ///  server to server.
    List<Identifier>? identifier,

    /// [type] Type of plan. For example, "Platinum" or "High Deductable".
    CodeableConcept? type,

    /// [coverageArea] The geographic region in which a health insurance plan's
    ///  benefits apply.
    List<Reference>? coverageArea,

    /// [network] Reference to the network that providing the type of coverage.
    List<Reference>? network,

    /// [generalCost] Overall costs associated with the plan.
    List<InsurancePlanGeneralCost>? generalCost,

    /// [specificCost] Costs associated with the coverage provided by the
    ///  product.
    List<InsurancePlanSpecificCost>? specificCost,
  }) = _InsurancePlanPlan;

  @override
  String get fhirType => 'InsurancePlanPlan';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory InsurancePlanPlan.fromYaml(dynamic yaml) => yaml is String
      ? InsurancePlanPlan.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? InsurancePlanPlan.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'InsurancePlanPlan cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory InsurancePlanPlan.fromJson(Map<String, dynamic> json) =>
      _$InsurancePlanPlanFromJson(json);

  /// Acts like a constructor, returns a [InsurancePlanPlan], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory InsurancePlanPlan.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$InsurancePlanPlanFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [InsurancePlanGeneralCost] Details of a Health Insurance product/plan
@freezed

/// [InsurancePlanGeneralCost] Details of a Health Insurance product/plan
@freezed
class InsurancePlanGeneralCost
    with _$InsurancePlanGeneralCost
    implements BackboneElement {
  /// [InsurancePlanGeneralCost] Details of a Health Insurance product/plan
  const InsurancePlanGeneralCost._();

  /// [InsurancePlanGeneralCost] Details of a Health Insurance product/plan
  ///  provided by an organization.
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
  /// [type] Type of cost.
  ///
  /// [groupSize] Number of participants enrolled in the plan.
  ///
  /// [groupSizeElement] Extensions for groupSize
  ///
  /// [cost] Value of the cost.
  ///
  /// [comment] Additional information about the general costs associated with
  ///  this plan.
  ///
  /// [commentElement] Extensions for comment
  const factory InsurancePlanGeneralCost({
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

    /// [type] Type of cost.
    CodeableConcept? type,

    /// [groupSize] Number of participants enrolled in the plan.
    FhirPositiveInt? groupSize,

    /// [groupSizeElement] Extensions for groupSize
    @JsonKey(name: '_groupSize') PrimitiveElement? groupSizeElement,

    /// [cost] Value of the cost.
    Money? cost,

    /// [comment] Additional information about the general costs associated with
    ///  this plan.
    String? comment,

    /// [commentElement] Extensions for comment
    @JsonKey(name: '_comment') PrimitiveElement? commentElement,
  }) = _InsurancePlanGeneralCost;

  @override
  String get fhirType => 'InsurancePlanGeneralCost';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory InsurancePlanGeneralCost.fromYaml(dynamic yaml) => yaml is String
      ? InsurancePlanGeneralCost.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? InsurancePlanGeneralCost.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'InsurancePlanGeneralCost cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory InsurancePlanGeneralCost.fromJson(Map<String, dynamic> json) =>
      _$InsurancePlanGeneralCostFromJson(json);

  /// Acts like a constructor, returns a [InsurancePlanGeneralCost], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory InsurancePlanGeneralCost.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$InsurancePlanGeneralCostFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [InsurancePlanSpecificCost] Details of a Health Insurance product/plan
@freezed

/// [InsurancePlanSpecificCost] Details of a Health Insurance product/plan
@freezed
class InsurancePlanSpecificCost
    with _$InsurancePlanSpecificCost
    implements BackboneElement {
  /// [InsurancePlanSpecificCost] Details of a Health Insurance product/plan
  const InsurancePlanSpecificCost._();

  /// [InsurancePlanSpecificCost] Details of a Health Insurance product/plan
  ///  provided by an organization.
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
  /// [category] General category of benefit (Medical; Dental; Vision; Drug;
  ///  Mental Health; Substance Abuse; Hospice, Home Health).
  ///
  /// [benefit] List of the specific benefits under this category of benefit.
  const factory InsurancePlanSpecificCost({
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

    /// [category] General category of benefit (Medical; Dental; Vision; Drug;
    ///  Mental Health; Substance Abuse; Hospice, Home Health).
    required CodeableConcept category,

    /// [benefit] List of the specific benefits under this category of benefit.
    List<InsurancePlanBenefit1>? benefit,
  }) = _InsurancePlanSpecificCost;

  @override
  String get fhirType => 'InsurancePlanSpecificCost';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory InsurancePlanSpecificCost.fromYaml(dynamic yaml) => yaml is String
      ? InsurancePlanSpecificCost.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? InsurancePlanSpecificCost.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'InsurancePlanSpecificCost cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory InsurancePlanSpecificCost.fromJson(Map<String, dynamic> json) =>
      _$InsurancePlanSpecificCostFromJson(json);

  /// Acts like a constructor, returns a [InsurancePlanSpecificCost], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory InsurancePlanSpecificCost.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$InsurancePlanSpecificCostFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [InsurancePlanBenefit1] Details of a Health Insurance product/plan
@freezed

/// [InsurancePlanBenefit1] Details of a Health Insurance product/plan
@freezed
class InsurancePlanBenefit1
    with _$InsurancePlanBenefit1
    implements BackboneElement {
  /// [InsurancePlanBenefit1] Details of a Health Insurance product/plan
  const InsurancePlanBenefit1._();

  /// [InsurancePlanBenefit1] Details of a Health Insurance product/plan
  ///  provided by an organization.
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
  /// [type] Type of specific benefit (preventative; primary care office visit;
  ///  speciality office visit; hospitalization; emergency room; urgent care).
  ///
  /// [cost] List of the costs associated with a specific benefit.
  const factory InsurancePlanBenefit1({
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

    /// [type] Type of specific benefit (preventative; primary care office visit;
    ///  speciality office visit; hospitalization; emergency room; urgent care).
    required CodeableConcept type,

    /// [cost] List of the costs associated with a specific benefit.
    List<InsurancePlanCost>? cost,
  }) = _InsurancePlanBenefit1;

  @override
  String get fhirType => 'InsurancePlanBenefit1';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory InsurancePlanBenefit1.fromYaml(dynamic yaml) => yaml is String
      ? InsurancePlanBenefit1.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? InsurancePlanBenefit1.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'InsurancePlanBenefit1 cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory InsurancePlanBenefit1.fromJson(Map<String, dynamic> json) =>
      _$InsurancePlanBenefit1FromJson(json);

  /// Acts like a constructor, returns a [InsurancePlanBenefit1], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory InsurancePlanBenefit1.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$InsurancePlanBenefit1FromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [InsurancePlanCost] Details of a Health Insurance product/plan provided
@freezed

/// [InsurancePlanCost] Details of a Health Insurance product/plan provided
@freezed
class InsurancePlanCost with _$InsurancePlanCost implements BackboneElement {
  /// [InsurancePlanCost] Details of a Health Insurance product/plan provided
  const InsurancePlanCost._();

  /// [InsurancePlanCost] Details of a Health Insurance product/plan provided
  ///  by an organization.
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
  /// [type] Type of cost (copay; individual cap; family cap; coinsurance;
  ///  deductible).
  ///
  /// [applicability] Whether the cost applies to in-network or out-of-network
  ///  providers (in-network; out-of-network; other).
  ///
  /// [qualifiers] Additional information about the cost, such as information
  ///  about funding sources (e.g. HSA, HRA, FSA, RRA).
  ///
  /// [value] The actual cost value. (some of the costs may be represented as
  ///  percentages rather than currency, e.g. 10% coinsurance).
  const factory InsurancePlanCost({
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

    /// [type] Type of cost (copay; individual cap; family cap; coinsurance;
    ///  deductible).
    required CodeableConcept type,

    /// [applicability] Whether the cost applies to in-network or out-of-network
    ///  providers (in-network; out-of-network; other).
    CodeableConcept? applicability,

    /// [qualifiers] Additional information about the cost, such as information
    ///  about funding sources (e.g. HSA, HRA, FSA, RRA).
    List<CodeableConcept>? qualifiers,

    /// [value] The actual cost value. (some of the costs may be represented as
    ///  percentages rather than currency, e.g. 10% coinsurance).
    Quantity? value,
  }) = _InsurancePlanCost;

  @override
  String get fhirType => 'InsurancePlanCost';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory InsurancePlanCost.fromYaml(dynamic yaml) => yaml is String
      ? InsurancePlanCost.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? InsurancePlanCost.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'InsurancePlanCost cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory InsurancePlanCost.fromJson(Map<String, dynamic> json) =>
      _$InsurancePlanCostFromJson(json);

  /// Acts like a constructor, returns a [InsurancePlanCost], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory InsurancePlanCost.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$InsurancePlanCostFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}
