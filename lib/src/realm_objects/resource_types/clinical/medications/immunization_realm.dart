import 'package:realm/realm.dart';
@RealmModel()
class _ImmunizationRealm {
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
  late _FhirCodeRealm status;
  late _PrimitiveElementRealm statusElement;
  late _CodeableConceptRealm statusReason;
  late _CodeableConceptRealm vaccineCode;
  late _ReferenceRealm patient;
  late _ReferenceRealm encounter;
  late String occurrenceDateTime;
  late _PrimitiveElementRealm occurrenceDateTimeElement;
  late String occurrenceString;
  late _PrimitiveElementRealm occurrenceStringElement;
  late String recorded;
  late _PrimitiveElementRealm recordedElement;
  late _FhirBooleanRealm primarySource;
  late _PrimitiveElementRealm primarySourceElement;
  late _CodeableConceptRealm reportOrigin;
  late _ReferenceRealm location;
  late _ReferenceRealm manufacturer;
  late String lotNumber;
  late _PrimitiveElementRealm lotNumberElement;
  late _FhirDateRealm expirationDate;
  late _PrimitiveElementRealm expirationDateElement;
  late _CodeableConceptRealm site;
  late _CodeableConceptRealm route;
  late _QuantityRealm doseQuantity;
  late List<_ImmunizationPerformerRealm> performer;
  late List<_AnnotationRealm> note;
  late List<_CodeableConceptRealm> reasonCode;
  late List<_ReferenceRealm> reasonReference;
  late _FhirBooleanRealm isSubpotent;
  late _PrimitiveElementRealm isSubpotentElement;
  late List<_CodeableConceptRealm> subpotentReason;
  late List<_ImmunizationEducationRealm> education;
  late List<_CodeableConceptRealm> programEligibility;
  late _CodeableConceptRealm fundingSource;
  late List<_ImmunizationReactionRealm> reaction;
  late List<_ImmunizationProtocolAppliedRealm> protocolApplied;
}
@RealmModel()
class _ImmunizationPerformerRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm function;
  late _ReferenceRealm actor;
}
@RealmModel()
class _ImmunizationEducationRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String documentType;
  late _PrimitiveElementRealm documentTypeElement;
  late _FhirUriRealm reference;
  late _PrimitiveElementRealm referenceElement;
  late String publicationDate;
  late _PrimitiveElementRealm publicationDateElement;
  late String presentationDate;
  late _PrimitiveElementRealm presentationDateElement;
}
@RealmModel()
class _ImmunizationReactionRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String date;
  late _PrimitiveElementRealm dateElement;
  late _ReferenceRealm detail;
  late _FhirBooleanRealm reported;
  late _PrimitiveElementRealm reportedElement;
}
@RealmModel()
class _ImmunizationProtocolAppliedRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String series;
  late _PrimitiveElementRealm seriesElement;
  late _ReferenceRealm authority;
  late List<_CodeableConceptRealm> targetDisease;
  late _FhirPositiveIntRealm doseNumberPositiveInt;
  late _PrimitiveElementRealm doseNumberPositiveIntElement;
  late String doseNumberString;
  late _PrimitiveElementRealm doseNumberStringElement;
  late _FhirPositiveIntRealm seriesDosesPositiveInt;
  late _PrimitiveElementRealm seriesDosesPositiveIntElement;
  late String seriesDosesString;
  late _PrimitiveElementRealm seriesDosesStringElement;
}
