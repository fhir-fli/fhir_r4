// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'location.freezed.dart';
part 'location.g.dart';

/// [Location] Details and position information for a physical place where
@freezed
class Location with _$Location implements DomainResource {
  /// [Location] Details and position information for a physical place where
  const Location._();

  /// [Location] Details and position information for a physical place where
  /// services are provided and resources and participants may be stored, found,
  ///  contained, or accommodated.
  ///
  /// [resourceType] This is a Location resource
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
  /// [identifier] Unique code or number identifying the location to its users.
  ///
  /// [status] The status property covers the general availability of the
  /// resource, not the current value which may be covered by the
  /// operationStatus, or by a schedule/slots if they are configured for the
  ///  location.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [operationalStatus] The operational status covers operation values most
  /// relevant to beds (but can also apply to rooms/units/chairs/etc. such as an
  /// isolation unit/dialysis chair). This typically covers concepts such as
  ///  contamination, housekeeping, and other activities like maintenance.
  ///
  /// [name] Name of the location as used by humans. Does not need to be
  ///  unique.
  ///
  /// [nameElement] Extensions for name
  ///
  /// [alias] A list of alternate names that the location is known as, or was
  ///  known as, in the past.
  ///
  /// [aliasElement] Extensions for alias
  ///
  /// [description] Description of the Location, which helps in finding or
  ///  referencing the place.
  ///
  /// [descriptionElement] Extensions for description
  ///
  /// [mode] Indicates whether a resource instance represents a specific
  ///  location or a class of locations.
  ///
  /// [modeElement] Extensions for mode
  ///
  /// [type] Indicates the type of function performed at the location.
  ///
  /// [telecom] The contact details of communication devices available at the
  /// location. This can include phone numbers, fax numbers, mobile numbers,
  ///  email addresses and web sites.
  ///
  /// [address] Physical location.
  ///
  /// [physicalType] Physical form of the location, e.g. building, room,
  ///  vehicle, road.
  ///
  /// [position] The absolute geographic location of the Location, expressed
  ///  using the WGS84 datum (This is the same co-ordinate system used in KML).
  ///
  /// [managingOrganization] The organization responsible for the provisioning
  ///  and upkeep of the location.
  ///
  /// [partOf] Another Location of which this Location is physically a part of.
  ///
  /// [hoursOfOperation] What days/times during a week is this location usually
  ///  open.
  ///
  /// [availabilityExceptions] A description of when the locations opening ours
  /// are different to normal, e.g. public holiday availability. Succinctly
  /// describing all possible exceptions to normal site availability as detailed
  ///  in the opening hours Times.
  ///
  /// [availabilityExceptionsElement] Extensions for availabilityExceptions
  ///
  /// [endpoint] Technical endpoints providing access to services operated for
  ///  the location.
  const factory Location({
    @Default(R4ResourceType.Location)
    @JsonKey(unknownEnumValue: R4ResourceType.Location)

    /// [resourceType] This is a Location resource
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

    /// [identifier] Unique code or number identifying the location to its users.
    List<Identifier>? identifier,

    /// [status] The status property covers the general availability of the
    /// resource, not the current value which may be covered by the
    /// operationStatus, or by a schedule/slots if they are configured for the
    ///  location.
    LocationStatus? status,

    /// [statusElement] Extensions for status
    @JsonKey(name: '_status') PrimitiveElement? statusElement,

    /// [operationalStatus] The operational status covers operation values most
    /// relevant to beds (but can also apply to rooms/units/chairs/etc. such as an
    /// isolation unit/dialysis chair). This typically covers concepts such as
    ///  contamination, housekeeping, and other activities like maintenance.
    Coding? operationalStatus,

    /// [name] Name of the location as used by humans. Does not need to be
    ///  unique.
    String? name,

    /// [nameElement] Extensions for name
    @JsonKey(name: '_name') PrimitiveElement? nameElement,

    /// [alias] A list of alternate names that the location is known as, or was
    ///  known as, in the past.
    List<String>? alias,

    /// [aliasElement] Extensions for alias
    @JsonKey(name: '_alias') List<Element?>? aliasElement,

    /// [description] Description of the Location, which helps in finding or
    ///  referencing the place.
    String? description,

    /// [descriptionElement] Extensions for description
    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,

    /// [mode] Indicates whether a resource instance represents a specific
    ///  location or a class of locations.
    LocationMode? mode,

    /// [modeElement] Extensions for mode
    @JsonKey(name: '_mode') PrimitiveElement? modeElement,

    /// [type] Indicates the type of function performed at the location.
    List<CodeableConcept>? type,

    /// [telecom] The contact details of communication devices available at the
    /// location. This can include phone numbers, fax numbers, mobile numbers,
    ///  email addresses and web sites.
    List<ContactPoint>? telecom,

    /// [address] Physical location.
    Address? address,

    /// [physicalType] Physical form of the location, e.g. building, room,
    ///  vehicle, road.
    CodeableConcept? physicalType,

    /// [position] The absolute geographic location of the Location, expressed
    ///  using the WGS84 datum (This is the same co-ordinate system used in KML).
    LocationPosition? position,

    /// [managingOrganization] The organization responsible for the provisioning
    ///  and upkeep of the location.
    Reference? managingOrganization,

    /// [partOf] Another Location of which this Location is physically a part of.
    Reference? partOf,

    /// [hoursOfOperation] What days/times during a week is this location usually
    ///  open.
    List<LocationHoursOfOperation>? hoursOfOperation,

    /// [availabilityExceptions] A description of when the locations opening ours
    /// are different to normal, e.g. public holiday availability. Succinctly
    /// describing all possible exceptions to normal site availability as detailed
    ///  in the opening hours Times.
    String? availabilityExceptions,
    @JsonKey(name: '_availabilityExceptions')

    /// [availabilityExceptionsElement] Extensions for availabilityExceptions
    PrimitiveElement? availabilityExceptionsElement,

    /// [endpoint] Technical endpoints providing access to services operated for
    ///  the location.
    List<Reference>? endpoint,
  }) = _Location;

  @override
  String get fhirType => 'Location';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Location.fromYaml(dynamic yaml) => yaml is String
      ? Location.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Location.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Location cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  /// Acts like a constructor, returns a [Location], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Location.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$LocationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());

  Location updateContactPointSystem(ContactPointSystem system,
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

  Location updateContactPointValue(String value, [int index = 0]) {
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

  Location updateContactPointUse(ContactPointUse use, [int index = 0]) {
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

  Location updateContactPointRank(FhirPositiveInt rank, [int index = 0]) {
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

  Location updateContactPointPeriod(Period period, [int index = 0]) {
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

  Location updateAddressUse(AddressUse use) => address == null
      ? copyWith(address: Address(use: use))
      : copyWith(address: address!.updateUse(use));

  Location updateAddressType(AddressType type) => address == null
      ? copyWith(address: Address(type: type))
      : copyWith(address: address!.updateType(type));

  Location updateAddressText(String text) => address == null
      ? copyWith(address: Address(text: text))
      : copyWith(address: address!.updateText(text));

  Location updateAddressLine(List<String> line) => address == null
      ? copyWith(address: Address(line: line))
      : copyWith(address: address!.updateLine(line));

  Location updateAddressCity(String city) => address == null
      ? copyWith(address: Address(city: city))
      : copyWith(address: address!.updateCity(city));

  Location updateAddressDistrict(String district) => address == null
      ? copyWith(address: Address(district: district))
      : copyWith(address: address!.updateDistrict(district));

  Location updateAddressState(String state) => address == null
      ? copyWith(address: Address(state: state))
      : copyWith(address: address!.updateState(state));

  Location updateAddressPostalCode(String postalCode) => address == null
      ? copyWith(address: Address(postalCode: postalCode))
      : copyWith(address: address!.updatePostalCode(postalCode));

  Location updateAddressCountry(String country) => address == null
      ? copyWith(address: Address(country: country))
      : copyWith(address: address!.updateCountry(country));

  Location updateAddressPeriod(Period period) => address == null
      ? copyWith(address: Address(period: period))
      : copyWith(address: address!.updatePeriod(period));

  @override
  Resource newId() => copyWith(id: generateNewUuidString());

  @override
  Resource newIdIfNoId() => id == null ? newId() : this;

  @override
  String get path => 'Location/$id';

  @override
  String get resourceTypeString => 'Location';

  @override
  Reference get thisReference =>
      Reference(reference: path, type: FhirUri(resourceTypeString));

  @override
  String toYaml() => json2yaml(toJson());

  @override
  Resource updateVersion({FhirMeta? oldMeta}) =>
      copyWith(meta: updateFhirMetaVersion(meta));
}

/// [LocationPosition] Details and position information for a physical place
@freezed
class LocationPosition with _$LocationPosition implements BackboneElement {
  /// [LocationPosition] Details and position information for a physical place
  const LocationPosition._();

  /// [LocationPosition] Details and position information for a physical place
  /// where services are provided and resources and participants may be stored,
  ///  found, contained, or accommodated.
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
  /// [longitude] Longitude. The value domain and the interpretation are the
  ///  same as for the text of the longitude element in KML (see notes below).
  ///
  /// [longitudeElement] Extensions for longitude
  ///
  /// [latitude] Latitude. The value domain and the interpretation are the same
  ///  as for the text of the latitude element in KML (see notes below).
  ///
  /// [latitudeElement] Extensions for latitude
  ///
  /// [altitude] Altitude. The value domain and the interpretation are the same
  ///  as for the text of the altitude element in KML (see notes below).
  ///
  /// [altitudeElement] Extensions for altitude
  const factory LocationPosition({
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

    /// [longitude] Longitude. The value domain and the interpretation are the
    ///  same as for the text of the longitude element in KML (see notes below).
    FhirDecimal? longitude,

    /// [longitudeElement] Extensions for longitude
    @JsonKey(name: '_longitude') PrimitiveElement? longitudeElement,

    /// [latitude] Latitude. The value domain and the interpretation are the same
    ///  as for the text of the latitude element in KML (see notes below).
    FhirDecimal? latitude,

    /// [latitudeElement] Extensions for latitude
    @JsonKey(name: '_latitude') PrimitiveElement? latitudeElement,

    /// [altitude] Altitude. The value domain and the interpretation are the same
    ///  as for the text of the altitude element in KML (see notes below).
    FhirDecimal? altitude,

    /// [altitudeElement] Extensions for altitude
    @JsonKey(name: '_altitude') PrimitiveElement? altitudeElement,
  }) = _LocationPosition;

  @override
  String get fhirType => 'LocationPosition';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory LocationPosition.fromYaml(dynamic yaml) => yaml is String
      ? LocationPosition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? LocationPosition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'LocationPosition cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory LocationPosition.fromJson(Map<String, dynamic> json) =>
      _$LocationPositionFromJson(json);

  /// Acts like a constructor, returns a [LocationPosition], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory LocationPosition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$LocationPositionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [LocationHoursOfOperation] Details and position information for a
@freezed
class LocationHoursOfOperation
    with _$LocationHoursOfOperation
    implements BackboneElement {
  /// [LocationHoursOfOperation] Details and position information for a
  const LocationHoursOfOperation._();

  /// [LocationHoursOfOperation] Details and position information for a
  /// physical place where services are provided and resources and participants
  ///  may be stored, found, contained, or accommodated.
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
  /// [daysOfWeek] Indicates which days of the week are available between the
  ///  start and end Times.
  ///
  /// [daysOfWeekElement] Extensions for daysOfWeek
  ///
  /// [allDay] The Location is open all day.
  ///
  /// [allDayElement] Extensions for allDay
  ///
  /// [openingTime] Time that the Location opens.
  ///
  /// [openingTimeElement] Extensions for openingTime
  ///
  /// [closingTime] Time that the Location closes.
  ///
  /// [closingTimeElement] Extensions for closingTime
  const factory LocationHoursOfOperation({
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

    /// [daysOfWeek] Indicates which days of the week are available between the
    ///  start and end Times.
    List<FhirCode>? daysOfWeek,

    /// [daysOfWeekElement] Extensions for daysOfWeek
    @JsonKey(name: '_daysOfWeek') List<Element?>? daysOfWeekElement,

    /// [allDay] The Location is open all day.
    FhirBoolean? allDay,

    /// [allDayElement] Extensions for allDay
    @JsonKey(name: '_allDay') PrimitiveElement? allDayElement,

    /// [openingTime] Time that the Location opens.
    FhirTime? openingTime,

    /// [openingTimeElement] Extensions for openingTime
    @JsonKey(name: '_openingTime') PrimitiveElement? openingTimeElement,

    /// [closingTime] Time that the Location closes.
    FhirTime? closingTime,

    /// [closingTimeElement] Extensions for closingTime
    @JsonKey(name: '_closingTime') PrimitiveElement? closingTimeElement,
  }) = _LocationHoursOfOperation;

  @override
  String get fhirType => 'LocationHoursOfOperation';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory LocationHoursOfOperation.fromYaml(dynamic yaml) => yaml is String
      ? LocationHoursOfOperation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? LocationHoursOfOperation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'LocationHoursOfOperation cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory LocationHoursOfOperation.fromJson(Map<String, dynamic> json) =>
      _$LocationHoursOfOperationFromJson(json);

  /// Acts like a constructor, returns a [LocationHoursOfOperation], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory LocationHoursOfOperation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$LocationHoursOfOperationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}
