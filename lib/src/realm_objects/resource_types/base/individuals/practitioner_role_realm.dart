import 'package:realm/realm.dart';
@RealmModel()
class _PractitionerRoleRealm {
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
  late _FhirBooleanRealm active;
  late _PrimitiveElementRealm activeElement;
  late _PeriodRealm period;
  late _ReferenceRealm practitioner;
  late _ReferenceRealm organization;
  late List<_CodeableConceptRealm> code;
  late List<_CodeableConceptRealm> specialty;
  late List<_ReferenceRealm> location;
  late List<_ReferenceRealm> healthcareService;
  late List<_ContactPointRealm> telecom;
  late List<_PractitionerRoleAvailableTimeRealm> availableTime;
  late List<_PractitionerRoleNotAvailableRealm> notAvailable;
  late String availabilityExceptions;
  late _PrimitiveElementRealm availabilityExceptionsElement;
  late List<_ReferenceRealm> endpoint;
}
@RealmModel()
class _PractitionerRoleAvailableTimeRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late List<_FhirCodeRealm> daysOfWeek;
  late List<_PrimitiveElementRealm> daysOfWeekElement;
  late _FhirBooleanRealm allDay;
  late _PrimitiveElementRealm allDayElement;
  late _FhirTimeRealm availableStartTime;
  late _PrimitiveElementRealm availableStartTimeElement;
  late _FhirTimeRealm availableEndTime;
  late _PrimitiveElementRealm availableEndTimeElement;
}
@RealmModel()
class _PractitionerRoleNotAvailableRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String description;
  late _PrimitiveElementRealm descriptionElement;
  late _PeriodRealm during;
}
