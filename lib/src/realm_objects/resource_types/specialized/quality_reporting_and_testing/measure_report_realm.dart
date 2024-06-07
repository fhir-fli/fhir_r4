import 'package:realm/realm.dart';
@RealmModel()
class _MeasureReportRealm {
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
  late _FhirCodeRealm type;
  late _PrimitiveElementRealm typeElement;
  late _FhirCanonicalRealm measure;
  late _ReferenceRealm subject;
  late String date;
  late _PrimitiveElementRealm dateElement;
  late _ReferenceRealm reporter;
  late _PeriodRealm period;
  late _CodeableConceptRealm improvementNotation;
  late List<_MeasureReportGroupRealm> group;
  late List<_ReferenceRealm> evaluatedResource;
}
@RealmModel()
class _MeasureReportGroupRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm code;
  late List<_MeasureReportPopulationRealm> population;
  late _QuantityRealm measureScore;
  late List<_MeasureReportStratifierRealm> stratifier;
}
@RealmModel()
class _MeasureReportPopulationRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm code;
  late _FhirIntegerRealm count;
  late _PrimitiveElementRealm countElement;
  late _ReferenceRealm subjectResults;
}
@RealmModel()
class _MeasureReportStratifierRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late List<_CodeableConceptRealm> code;
  late List<_MeasureReportStratumRealm> stratum;
}
@RealmModel()
class _MeasureReportStratumRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm value;
  late List<_MeasureReportComponentRealm> component;
  late List<_MeasureReportPopulation1Realm> population;
  late _QuantityRealm measureScore;
}
@RealmModel()
class _MeasureReportComponentRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm code;
  late _CodeableConceptRealm value;
}
@RealmModel()
class _MeasureReportPopulation1Realm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm code;
  late _FhirIntegerRealm count;
  late _PrimitiveElementRealm countElement;
  late _ReferenceRealm subjectResults;
}
