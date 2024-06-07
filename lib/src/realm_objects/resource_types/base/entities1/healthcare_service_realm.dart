import 'package:realm/realm.dart';
@RealmModel()
class _HealthcareServiceRealm {
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
  late _ReferenceRealm providedBy;
  late List<_CodeableConceptRealm> category;
  late List<_CodeableConceptRealm> type;
  late List<_CodeableConceptRealm> specialty;
  late List<_ReferenceRealm> location;
  late String name;
  late _PrimitiveElementRealm nameElement;
  late String comment;
  late _PrimitiveElementRealm commentElement;
  late _FhirMarkdownRealm extraDetails;
  late _PrimitiveElementRealm extraDetailsElement;
  late _AttachmentRealm photo;
  late List<_ContactPointRealm> telecom;
  late List<_ReferenceRealm> coverageArea;
  late List<_CodeableConceptRealm> serviceProvisionCode;
  late List<_HealthcareServiceEligibilityRealm> eligibility;
  late List<_CodeableConceptRealm> program;
  late List<_CodeableConceptRealm> characteristic;
  late List<_CodeableConceptRealm> communication;
  late List<_CodeableConceptRealm> referralMethod;
  late _FhirBooleanRealm appointmentRequired;
  late _PrimitiveElementRealm appointmentRequiredElement;
  late List<_HealthcareServiceAvailableTimeRealm> availableTime;
  late List<_HealthcareServiceNotAvailableRealm> notAvailable;
  late String availabilityExceptions;
  late _PrimitiveElementRealm availabilityExceptionsElement;
  late List<_ReferenceRealm> endpoint;
}
@RealmModel()
class _HealthcareServiceEligibilityRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm code;
  late _FhirMarkdownRealm comment;
  late _PrimitiveElementRealm commentElement;
}
@RealmModel()
class _HealthcareServiceAvailableTimeRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late List<_HealthcareServiceAvailableTimeDaysOfWeekRealm> daysOfWeek;
  late List<_PrimitiveElementRealm> daysOfWeekElement;
  late _FhirBooleanRealm allDay;
  late _PrimitiveElementRealm allDayElement;
  late _FhirTimeRealm availableStartTime;
  late _PrimitiveElementRealm availableStartTimeElement;
  late _FhirTimeRealm availableEndTime;
  late _PrimitiveElementRealm availableEndTimeElement;
}
@RealmModel()
class _HealthcareServiceNotAvailableRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String description;
  late _PrimitiveElementRealm descriptionElement;
  late _PeriodRealm during;
}
