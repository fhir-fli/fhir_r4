// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'location.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $LocationCopyWith<T> extends $DomainResourceCopyWith<T> {
  @override
  T call({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    LocationStatus? status,
    Coding? operationalStatus,
    FhirString? name,
    List<FhirString>? alias,
    FhirString? description,
    LocationMode? mode,
    List<CodeableConcept>? type,
    List<ContactPoint>? telecom,
    Address? address,
    CodeableConcept? physicalType,
    LocationPosition? position,
    Reference? managingOrganization,
    Reference? partOf,
    List<LocationHoursOfOperation>? hoursOfOperation,
    FhirString? availabilityExceptions,
    List<Reference>? endpoint,
    bool? disallowExtensions,
  });
}

class _$LocationCopyWithImpl<T> implements $LocationCopyWith<T> {
  final Location _value;
  final T Function(Location) _then;

  _$LocationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? meta = fhirSentinel,
    Object? implicitRules = fhirSentinel,
    Object? language = fhirSentinel,
    Object? text = fhirSentinel,
    Object? contained = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? identifier = fhirSentinel,
    Object? status = fhirSentinel,
    Object? operationalStatus = fhirSentinel,
    Object? name = fhirSentinel,
    Object? alias = fhirSentinel,
    Object? description = fhirSentinel,
    Object? mode = fhirSentinel,
    Object? type = fhirSentinel,
    Object? telecom = fhirSentinel,
    Object? address = fhirSentinel,
    Object? physicalType = fhirSentinel,
    Object? position = fhirSentinel,
    Object? managingOrganization = fhirSentinel,
    Object? partOf = fhirSentinel,
    Object? hoursOfOperation = fhirSentinel,
    Object? availabilityExceptions = fhirSentinel,
    Object? endpoint = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Location(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        meta: identical(meta, fhirSentinel) ? _value.meta : meta as FhirMeta?,
        implicitRules: identical(implicitRules, fhirSentinel)
            ? _value.implicitRules
            : implicitRules as FhirUri?,
        language: identical(language, fhirSentinel)
            ? _value.language
            : language as CommonLanguages?,
        text: identical(text, fhirSentinel) ? _value.text : text as Narrative?,
        contained: identical(contained, fhirSentinel)
            ? _value.contained
            : contained as List<Resource>?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        identifier: identical(identifier, fhirSentinel)
            ? _value.identifier
            : identifier as List<Identifier>?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : status as LocationStatus?,
        operationalStatus: identical(operationalStatus, fhirSentinel)
            ? _value.operationalStatus
            : operationalStatus as Coding?,
        name: identical(name, fhirSentinel) ? _value.name : name as FhirString?,
        alias: identical(alias, fhirSentinel)
            ? _value.alias
            : alias as List<FhirString>?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirString?,
        mode:
            identical(mode, fhirSentinel) ? _value.mode : mode as LocationMode?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as List<CodeableConcept>?,
        telecom: identical(telecom, fhirSentinel)
            ? _value.telecom
            : telecom as List<ContactPoint>?,
        address: identical(address, fhirSentinel)
            ? _value.address
            : address as Address?,
        physicalType: identical(physicalType, fhirSentinel)
            ? _value.physicalType
            : physicalType as CodeableConcept?,
        position: identical(position, fhirSentinel)
            ? _value.position
            : position as LocationPosition?,
        managingOrganization: identical(managingOrganization, fhirSentinel)
            ? _value.managingOrganization
            : managingOrganization as Reference?,
        partOf: identical(partOf, fhirSentinel)
            ? _value.partOf
            : partOf as Reference?,
        hoursOfOperation: identical(hoursOfOperation, fhirSentinel)
            ? _value.hoursOfOperation
            : hoursOfOperation as List<LocationHoursOfOperation>?,
        availabilityExceptions: identical(availabilityExceptions, fhirSentinel)
            ? _value.availabilityExceptions
            : availabilityExceptions as FhirString?,
        endpoint: identical(endpoint, fhirSentinel)
            ? _value.endpoint
            : endpoint as List<Reference>?,
      ),
    );
  }
}

extension LocationCopyWithExtension on Location {
  $LocationCopyWith<Location> get copyWith => _$LocationCopyWithImpl<Location>(
        this,
        (value) => value,
      );
}

abstract class $LocationPositionCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirDecimal? longitude,
    FhirDecimal? latitude,
    FhirDecimal? altitude,
    bool? disallowExtensions,
  });
}

class _$LocationPositionCopyWithImpl<T>
    implements $LocationPositionCopyWith<T> {
  final LocationPosition _value;
  final T Function(LocationPosition) _then;

  _$LocationPositionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? longitude = fhirSentinel,
    Object? latitude = fhirSentinel,
    Object? altitude = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      LocationPosition(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        longitude: longitude as FhirDecimal? ?? _value.longitude,
        latitude: latitude as FhirDecimal? ?? _value.latitude,
        altitude: identical(altitude, fhirSentinel)
            ? _value.altitude
            : altitude as FhirDecimal?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension LocationPositionCopyWithExtension on LocationPosition {
  $LocationPositionCopyWith<LocationPosition> get copyWith =>
      _$LocationPositionCopyWithImpl<LocationPosition>(
        this,
        (value) => value,
      );
}

abstract class $LocationHoursOfOperationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<DaysOfWeek>? daysOfWeek,
    FhirBoolean? allDay,
    FhirTime? openingTime,
    FhirTime? closingTime,
    bool? disallowExtensions,
  });
}

class _$LocationHoursOfOperationCopyWithImpl<T>
    implements $LocationHoursOfOperationCopyWith<T> {
  final LocationHoursOfOperation _value;
  final T Function(LocationHoursOfOperation) _then;

  _$LocationHoursOfOperationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? daysOfWeek = fhirSentinel,
    Object? allDay = fhirSentinel,
    Object? openingTime = fhirSentinel,
    Object? closingTime = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      LocationHoursOfOperation(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        daysOfWeek: identical(daysOfWeek, fhirSentinel)
            ? _value.daysOfWeek
            : daysOfWeek as List<DaysOfWeek>?,
        allDay: identical(allDay, fhirSentinel)
            ? _value.allDay
            : allDay as FhirBoolean?,
        openingTime: identical(openingTime, fhirSentinel)
            ? _value.openingTime
            : openingTime as FhirTime?,
        closingTime: identical(closingTime, fhirSentinel)
            ? _value.closingTime
            : closingTime as FhirTime?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension LocationHoursOfOperationCopyWithExtension
    on LocationHoursOfOperation {
  $LocationHoursOfOperationCopyWith<LocationHoursOfOperation> get copyWith =>
      _$LocationHoursOfOperationCopyWithImpl<LocationHoursOfOperation>(
        this,
        (value) => value,
      );
}
