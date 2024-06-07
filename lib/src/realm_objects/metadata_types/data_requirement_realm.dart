import 'package:realm/realm.dart';

@RealmModel()
class _DataRequirementRealm {
  @PrimaryKey()
  late String id;
  late List<_FhirExtensionRealm> extension_;
  late _FhirCodeRealm type;
  late _PrimitiveElementRealm typeElement;
  late List<_FhirCanonicalRealm> profile;
  late _CodeableConceptRealm subjectCodeableConcept;
  late _ReferenceRealm subjectReference;
  late String mustSupport;
  late List<_PrimitiveElementRealm> mustSupportElement;
  late List<_DataRequirementCodeFilterRealm> codeFilter;
  late List<_DataRequirementDateFilterRealm> dateFilter;
  late _FhirPositiveIntRealm limit;
  late _PrimitiveElementRealm limitElement;
  late List<_DataRequirementSortRealm> sort;
}

@RealmModel()
class _DataRequirementCodeFilterRealm {
  @PrimaryKey()
  late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String path;
  late _PrimitiveElementRealm pathElement;
  late String searchParam;
  late _PrimitiveElementRealm searchParamElement;
  late _FhirCanonicalRealm valueSet;
  late List<_CodingRealm> code;
}

@RealmModel()
class _DataRequirementDateFilterRealm {
  @PrimaryKey()
  late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String path;
  late _PrimitiveElementRealm pathElement;
  late String searchParam;
  late _PrimitiveElementRealm searchParamElement;
  late String valueDateTime;
  late _PrimitiveElementRealm valueDateTimeElement;
  late _PeriodRealm valuePeriod;
  late _FhirDurationRealm valueDuration;
}

@RealmModel()
class _DataRequirementSortRealm {
  @PrimaryKey()
  late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String path;
  late _PrimitiveElementRealm pathElement;
  late _DataRequirementSortDirectionRealm direction;
  late _PrimitiveElementRealm directionElement;
}
