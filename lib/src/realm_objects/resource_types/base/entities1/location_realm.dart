import 'package:realm/realm.dart';
@RealmModel()
class _LocationRealm {
  late _R4ResourceTypeRealm resourceType;
  @PrimaryKey() late String id;
  late _FhirMetaRealm meta;
  late _FhirUriRealm implicitRules;
  late _PrimitiveElementRealm implicitRulesElement;
  late _FhirCodeRealm language;
  late _PrimitiveElementRealm languageElement;
  late _NarrativeRealm text;
  late List<_ResourceRealm> contained;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late List<_IdentifierRealm> identifier;
  late _LocationStatusRealm status;
  late _PrimitiveElementRealm statusElement;
  late _CodingRealm operationalStatus;
  late String name;
  late _PrimitiveElementRealm nameElement;
  late String alias;
  late List<_PrimitiveElementRealm> aliasElement;
  late String description;
  late _PrimitiveElementRealm descriptionElement;
  late _LocationModeRealm mode;
  late _PrimitiveElementRealm modeElement;
  late List<_CodeableConceptRealm> type;
  late List<_ContactPointRealm> telecom;
  late _AddressRealm address;
  late _CodeableConceptRealm physicalType;
  late _LocationPositionRealm position;
  late _ReferenceRealm managingOrganization;
  late _ReferenceRealm partOf;
  late List<_LocationHoursOfOperationRealm> hoursOfOperation;
  late String availabilityExceptions;
  late _PrimitiveElementRealm availabilityExceptionsElement;
  late List<_ReferenceRealm> endpoint;
}
@RealmModel()
class _LocationPositionRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirDecimalRealm longitude;
  late _PrimitiveElementRealm longitudeElement;
  late _FhirDecimalRealm latitude;
  late _PrimitiveElementRealm latitudeElement;
  late _FhirDecimalRealm altitude;
  late _PrimitiveElementRealm altitudeElement;
}
@RealmModel()
class _LocationHoursOfOperationRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late List<_FhirCodeRealm> daysOfWeek;
  late List<_PrimitiveElementRealm> daysOfWeekElement;
  late _FhirBooleanRealm allDay;
  late _PrimitiveElementRealm allDayElement;
  late _FhirTimeRealm openingTime;
  late _PrimitiveElementRealm openingTimeElement;
  late _FhirTimeRealm closingTime;
  late _PrimitiveElementRealm closingTimeElement;
}
