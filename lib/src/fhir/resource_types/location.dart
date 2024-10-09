import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [Location] /// Details and position information for a physical place where services are
/// provided and resources and participants may be stored, found, contained, or
/// accommodated.
class Location extends DomainResource {
  Location({
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
    this.status,
    this.statusElement,
    this.operationalStatus,
    this.name,
    this.nameElement,
    this.alias,
    this.aliasElement,
    this.description,
    this.descriptionElement,
    this.mode,
    this.modeElement,
    this.type,
    this.telecom,
    this.address,
    this.physicalType,
    this.position,
    this.managingOrganization,
    this.partOf,
    this.hoursOfOperation,
    this.availabilityExceptions,
    this.availabilityExceptionsElement,
    this.endpoint,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(resourceType: R4ResourceType.Location);

  @override
  String get fhirType => 'Location';

  @Id()
  int dbId = 0;

  /// [identifier] /// Unique code or number identifying the location to its users.
  final List<Identifier>? identifier;

  /// [status] /// The status property covers the general availability of the resource, not
  /// the current value which may be covered by the operationStatus, or by a
  /// schedule/slots if they are configured for the location.
  final LocationStatus? status;
  final Element? statusElement;

  /// [operationalStatus] /// The operational status covers operation values most relevant to beds (but
  /// can also apply to rooms/units/chairs/etc. such as an isolation
  /// unit/dialysis chair). This typically covers concepts such as contamination,
  /// housekeeping, and other activities like maintenance.
  final Coding? operationalStatus;

  /// [name] /// Name of the location as used by humans. Does not need to be unique.
  final FhirString? name;
  final Element? nameElement;

  /// [alias] /// A list of alternate names that the location is known as, or was known as,
  /// in the past.
  final List<FhirString>? alias;
  final List<Element>? aliasElement;

  /// [description] /// Description of the Location, which helps in finding or referencing the
  /// place.
  final FhirString? description;
  final Element? descriptionElement;

  /// [mode] /// Indicates whether a resource instance represents a specific location or a
  /// class of locations.
  final LocationMode? mode;
  final Element? modeElement;

  /// [type] /// Indicates the type of function performed at the location.
  final List<CodeableConcept>? type;

  /// [telecom] /// The contact details of communication devices available at the location.
  /// This can include phone numbers, fax numbers, mobile numbers, email
  /// addresses and web sites.
  final List<ContactPoint>? telecom;

  /// [address] /// Physical location.
  final Address? address;

  /// [physicalType] /// Physical form of the location, e.g. building, room, vehicle, road.
  final CodeableConcept? physicalType;

  /// [position] /// The absolute geographic location of the Location, expressed using the WGS84
  /// datum (This is the same co-ordinate system used in KML).
  final LocationPosition? position;

  /// [managingOrganization] /// The organization responsible for the provisioning and upkeep of the
  /// location.
  final Reference? managingOrganization;

  /// [partOf] /// Another Location of which this Location is physically a part of.
  final Reference? partOf;

  /// [hoursOfOperation] /// What days/times during a week is this location usually open.
  final List<LocationHoursOfOperation>? hoursOfOperation;

  /// [availabilityExceptions] /// A description of when the locations opening ours are different to normal,
  /// e.g. public holiday availability. Succinctly describing all possible
  /// exceptions to normal site availability as detailed in the opening hours
  /// Times.
  final FhirString? availabilityExceptions;
  final Element? availabilityExceptionsElement;

  /// [endpoint] /// Technical endpoints providing access to services operated for the location.
  final List<Reference>? endpoint;
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
    if (status != null) {
      json['status'] = status!.toJson();
    }
    if (operationalStatus != null) {
      json['operationalStatus'] = operationalStatus!.toJson();
    }
    if (name?.value != null) {
      json['name'] = name!.toJson();
    }
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    if (alias != null && alias!.isNotEmpty) {
      json['alias'] = alias!.map((FhirString v) => v.toJson()).toList();
    }
    if (aliasElement != null && aliasElement!.isNotEmpty) {
      json['_alias'] = aliasElement!.map((Element v) => v.toJson()).toList();
    }
    if (description?.value != null) {
      json['description'] = description!.toJson();
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (mode != null) {
      json['mode'] = mode!.toJson();
    }
    if (type != null && type!.isNotEmpty) {
      json['type'] =
          type!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (telecom != null && telecom!.isNotEmpty) {
      json['telecom'] =
          telecom!.map<dynamic>((ContactPoint v) => v.toJson()).toList();
    }
    if (address != null) {
      json['address'] = address!.toJson();
    }
    if (physicalType != null) {
      json['physicalType'] = physicalType!.toJson();
    }
    if (position != null) {
      json['position'] = position!.toJson();
    }
    if (managingOrganization != null) {
      json['managingOrganization'] = managingOrganization!.toJson();
    }
    if (partOf != null) {
      json['partOf'] = partOf!.toJson();
    }
    if (hoursOfOperation != null && hoursOfOperation!.isNotEmpty) {
      json['hoursOfOperation'] = hoursOfOperation!
          .map<dynamic>((LocationHoursOfOperation v) => v.toJson())
          .toList();
    }
    if (availabilityExceptions?.value != null) {
      json['availabilityExceptions'] = availabilityExceptions!.toJson();
    }
    if (availabilityExceptionsElement != null) {
      json['_availabilityExceptions'] = availabilityExceptionsElement!.toJson();
    }
    if (endpoint != null && endpoint!.isNotEmpty) {
      json['endpoint'] =
          endpoint!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    return json;
  }

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
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
      status: json['status'] != null
          ? LocationStatus.fromJson(json['status'])
          : null,
      statusElement: json['_status'] != null
          ? Element.fromJson(json['_status'] as Map<String, dynamic>)
          : null,
      operationalStatus: json['operationalStatus'] != null
          ? Coding.fromJson(json['operationalStatus'] as Map<String, dynamic>)
          : null,
      name: json['name'] != null ? FhirString.fromJson(json['name']) : null,
      nameElement: json['_name'] != null
          ? Element.fromJson(json['_name'] as Map<String, dynamic>)
          : null,
      alias: json['alias'] != null
          ? (json['alias'] as List<dynamic>)
              .map<FhirString>((dynamic v) => FhirString.fromJson(v as dynamic))
              .toList()
          : null,
      aliasElement: json['_alias'] != null
          ? (json['_alias'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      description: json['description'] != null
          ? FhirString.fromJson(json['description'])
          : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(json['_description'] as Map<String, dynamic>)
          : null,
      mode: json['mode'] != null ? LocationMode.fromJson(json['mode']) : null,
      modeElement: json['_mode'] != null
          ? Element.fromJson(json['_mode'] as Map<String, dynamic>)
          : null,
      type: json['type'] != null
          ? (json['type'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      telecom: json['telecom'] != null
          ? (json['telecom'] as List<dynamic>)
              .map<ContactPoint>((dynamic v) =>
                  ContactPoint.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      address: json['address'] != null
          ? Address.fromJson(json['address'] as Map<String, dynamic>)
          : null,
      physicalType: json['physicalType'] != null
          ? CodeableConcept.fromJson(
              json['physicalType'] as Map<String, dynamic>)
          : null,
      position: json['position'] != null
          ? LocationPosition.fromJson(json['position'] as Map<String, dynamic>)
          : null,
      managingOrganization: json['managingOrganization'] != null
          ? Reference.fromJson(
              json['managingOrganization'] as Map<String, dynamic>)
          : null,
      partOf: json['partOf'] != null
          ? Reference.fromJson(json['partOf'] as Map<String, dynamic>)
          : null,
      hoursOfOperation: json['hoursOfOperation'] != null
          ? (json['hoursOfOperation'] as List<dynamic>)
              .map<LocationHoursOfOperation>((dynamic v) =>
                  LocationHoursOfOperation.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      availabilityExceptions: json['availabilityExceptions'] != null
          ? FhirString.fromJson(json['availabilityExceptions'])
          : null,
      availabilityExceptionsElement: json['_availabilityExceptions'] != null
          ? Element.fromJson(
              json['_availabilityExceptions'] as Map<String, dynamic>)
          : null,
      endpoint: json['endpoint'] != null
          ? (json['endpoint'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  Location clone() => throw UnimplementedError();
  @override
  Location copyWith({
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
    LocationStatus? status,
    Element? statusElement,
    Coding? operationalStatus,
    FhirString? name,
    Element? nameElement,
    List<FhirString>? alias,
    List<Element>? aliasElement,
    FhirString? description,
    Element? descriptionElement,
    LocationMode? mode,
    Element? modeElement,
    List<CodeableConcept>? type,
    List<ContactPoint>? telecom,
    Address? address,
    CodeableConcept? physicalType,
    LocationPosition? position,
    Reference? managingOrganization,
    Reference? partOf,
    List<LocationHoursOfOperation>? hoursOfOperation,
    FhirString? availabilityExceptions,
    Element? availabilityExceptionsElement,
    List<Reference>? endpoint,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return Location(
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
      operationalStatus: operationalStatus ?? this.operationalStatus,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      alias: alias ?? this.alias,
      aliasElement: aliasElement ?? this.aliasElement,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      mode: mode ?? this.mode,
      modeElement: modeElement ?? this.modeElement,
      type: type ?? this.type,
      telecom: telecom ?? this.telecom,
      address: address ?? this.address,
      physicalType: physicalType ?? this.physicalType,
      position: position ?? this.position,
      managingOrganization: managingOrganization ?? this.managingOrganization,
      partOf: partOf ?? this.partOf,
      hoursOfOperation: hoursOfOperation ?? this.hoursOfOperation,
      availabilityExceptions:
          availabilityExceptions ?? this.availabilityExceptions,
      availabilityExceptionsElement:
          availabilityExceptionsElement ?? this.availabilityExceptionsElement,
      endpoint: endpoint ?? this.endpoint,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory Location.fromYaml(dynamic yaml) => yaml is String
      ? Location.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? Location.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'Location cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory Location.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Location.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [LocationPosition] /// The absolute geographic location of the Location, expressed using the WGS84
/// datum (This is the same co-ordinate system used in KML).
class LocationPosition extends BackboneElement {
  LocationPosition({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.longitude,
    this.longitudeElement,
    required this.latitude,
    this.latitudeElement,
    this.altitude,
    this.altitudeElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'LocationPosition';

  @Id()
  int dbId = 0;

  /// [longitude] /// Longitude. The value domain and the interpretation are the same as for the
  /// text of the longitude element in KML (see notes below).
  final FhirDecimal longitude;
  final Element? longitudeElement;

  /// [latitude] /// Latitude. The value domain and the interpretation are the same as for the
  /// text of the latitude element in KML (see notes below).
  final FhirDecimal latitude;
  final Element? latitudeElement;

  /// [altitude] /// Altitude. The value domain and the interpretation are the same as for the
  /// text of the altitude element in KML (see notes below).
  final FhirDecimal? altitude;
  final Element? altitudeElement;
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
    json['longitude'] = longitude.toJson();
    if (longitudeElement != null) {
      json['_longitude'] = longitudeElement!.toJson();
    }
    json['latitude'] = latitude.toJson();
    if (latitudeElement != null) {
      json['_latitude'] = latitudeElement!.toJson();
    }
    if (altitude?.value != null) {
      json['altitude'] = altitude!.toJson();
    }
    if (altitudeElement != null) {
      json['_altitude'] = altitudeElement!.toJson();
    }
    return json;
  }

  factory LocationPosition.fromJson(Map<String, dynamic> json) {
    return LocationPosition(
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
      longitude: FhirDecimal.fromJson(json['longitude']),
      longitudeElement: json['_longitude'] != null
          ? Element.fromJson(json['_longitude'] as Map<String, dynamic>)
          : null,
      latitude: FhirDecimal.fromJson(json['latitude']),
      latitudeElement: json['_latitude'] != null
          ? Element.fromJson(json['_latitude'] as Map<String, dynamic>)
          : null,
      altitude: json['altitude'] != null
          ? FhirDecimal.fromJson(json['altitude'])
          : null,
      altitudeElement: json['_altitude'] != null
          ? Element.fromJson(json['_altitude'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  LocationPosition clone() => throw UnimplementedError();
  @override
  LocationPosition copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirDecimal? longitude,
    Element? longitudeElement,
    FhirDecimal? latitude,
    Element? latitudeElement,
    FhirDecimal? altitude,
    Element? altitudeElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return LocationPosition(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      longitude: longitude ?? this.longitude,
      longitudeElement: longitudeElement ?? this.longitudeElement,
      latitude: latitude ?? this.latitude,
      latitudeElement: latitudeElement ?? this.latitudeElement,
      altitude: altitude ?? this.altitude,
      altitudeElement: altitudeElement ?? this.altitudeElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory LocationPosition.fromYaml(dynamic yaml) => yaml is String
      ? LocationPosition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? LocationPosition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'LocationPosition cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory LocationPosition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return LocationPosition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [LocationHoursOfOperation] /// What days/times during a week is this location usually open.
class LocationHoursOfOperation extends BackboneElement {
  LocationHoursOfOperation({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.daysOfWeek,
    this.daysOfWeekElement,
    this.allDay,
    this.allDayElement,
    this.openingTime,
    this.openingTimeElement,
    this.closingTime,
    this.closingTimeElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'LocationHoursOfOperation';

  @Id()
  int dbId = 0;

  /// [daysOfWeek] /// Indicates which days of the week are available between the start and end
  /// Times.
  final List<DaysOfWeek>? daysOfWeek;
  final List<Element>? daysOfWeekElement;

  /// [allDay] /// The Location is open all day.
  final FhirBoolean? allDay;
  final Element? allDayElement;

  /// [openingTime] /// Time that the Location opens.
  final FhirTime? openingTime;
  final Element? openingTimeElement;

  /// [closingTime] /// Time that the Location closes.
  final FhirTime? closingTime;
  final Element? closingTimeElement;
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
    if (daysOfWeek != null && daysOfWeek!.isNotEmpty) {
      json['daysOfWeek'] =
          daysOfWeek!.map<dynamic>((DaysOfWeek v) => v.toJson()).toList();
    }
    if (allDay?.value != null) {
      json['allDay'] = allDay!.toJson();
    }
    if (allDayElement != null) {
      json['_allDay'] = allDayElement!.toJson();
    }
    if (openingTime?.value != null) {
      json['openingTime'] = openingTime!.toJson();
    }
    if (openingTimeElement != null) {
      json['_openingTime'] = openingTimeElement!.toJson();
    }
    if (closingTime?.value != null) {
      json['closingTime'] = closingTime!.toJson();
    }
    if (closingTimeElement != null) {
      json['_closingTime'] = closingTimeElement!.toJson();
    }
    return json;
  }

  factory LocationHoursOfOperation.fromJson(Map<String, dynamic> json) {
    return LocationHoursOfOperation(
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
      daysOfWeek: json['daysOfWeek'] != null
          ? (json['daysOfWeek'] as List<dynamic>)
              .map<DaysOfWeek>((dynamic v) => DaysOfWeek.fromJson(v as dynamic))
              .toList()
          : null,
      daysOfWeekElement: json['_daysOfWeek'] != null
          ? (json['_daysOfWeek'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      allDay:
          json['allDay'] != null ? FhirBoolean.fromJson(json['allDay']) : null,
      allDayElement: json['_allDay'] != null
          ? Element.fromJson(json['_allDay'] as Map<String, dynamic>)
          : null,
      openingTime: json['openingTime'] != null
          ? FhirTime.fromJson(json['openingTime'])
          : null,
      openingTimeElement: json['_openingTime'] != null
          ? Element.fromJson(json['_openingTime'] as Map<String, dynamic>)
          : null,
      closingTime: json['closingTime'] != null
          ? FhirTime.fromJson(json['closingTime'])
          : null,
      closingTimeElement: json['_closingTime'] != null
          ? Element.fromJson(json['_closingTime'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  LocationHoursOfOperation clone() => throw UnimplementedError();
  @override
  LocationHoursOfOperation copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<DaysOfWeek>? daysOfWeek,
    List<Element>? daysOfWeekElement,
    FhirBoolean? allDay,
    Element? allDayElement,
    FhirTime? openingTime,
    Element? openingTimeElement,
    FhirTime? closingTime,
    Element? closingTimeElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return LocationHoursOfOperation(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      daysOfWeek: daysOfWeek ?? this.daysOfWeek,
      daysOfWeekElement: daysOfWeekElement ?? this.daysOfWeekElement,
      allDay: allDay ?? this.allDay,
      allDayElement: allDayElement ?? this.allDayElement,
      openingTime: openingTime ?? this.openingTime,
      openingTimeElement: openingTimeElement ?? this.openingTimeElement,
      closingTime: closingTime ?? this.closingTime,
      closingTimeElement: closingTimeElement ?? this.closingTimeElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory LocationHoursOfOperation.fromYaml(dynamic yaml) => yaml is String
      ? LocationHoursOfOperation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? LocationHoursOfOperation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'LocationHoursOfOperation cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory LocationHoursOfOperation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return LocationHoursOfOperation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
