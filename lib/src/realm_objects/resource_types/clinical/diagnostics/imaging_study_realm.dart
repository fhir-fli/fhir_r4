import 'package:realm/realm.dart';
@RealmModel()
class _ImagingStudyRealm {
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
  late List<_CodingRealm> modality;
  late _ReferenceRealm subject;
  late _ReferenceRealm encounter;
  late String started;
  late _PrimitiveElementRealm startedElement;
  late List<_ReferenceRealm> basedOn;
  late _ReferenceRealm referrer;
  late List<_ReferenceRealm> interpreter;
  late List<_ReferenceRealm> endpoint;
  late _FhirUnsignedIntRealm numberOfSeries;
  late _PrimitiveElementRealm numberOfSeriesElement;
  late _FhirUnsignedIntRealm numberOfInstances;
  late _PrimitiveElementRealm numberOfInstancesElement;
  late _ReferenceRealm procedureReference;
  late List<_CodeableConceptRealm> procedureCode;
  late _ReferenceRealm location;
  late List<_CodeableConceptRealm> reasonCode;
  late List<_ReferenceRealm> reasonReference;
  late List<_AnnotationRealm> note;
  late String description;
  late _PrimitiveElementRealm descriptionElement;
  late List<_ImagingStudySeriesRealm> series;
}
@RealmModel()
class _ImagingStudySeriesRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirIdRealm uid;
  late _PrimitiveElementRealm uidElement;
  late _FhirUnsignedIntRealm number;
  late _PrimitiveElementRealm numberElement;
  late _CodingRealm modality;
  late String description;
  late _PrimitiveElementRealm descriptionElement;
  late _FhirUnsignedIntRealm numberOfInstances;
  late _PrimitiveElementRealm numberOfInstancesElement;
  late List<_ReferenceRealm> endpoint;
  late _CodingRealm bodySite;
  late _CodingRealm laterality;
  late List<_ReferenceRealm> specimen;
  late String started;
  late _PrimitiveElementRealm startedElement;
  late List<_ImagingStudyPerformerRealm> performer;
  late List<_ImagingStudyInstanceRealm> instance;
}
@RealmModel()
class _ImagingStudyPerformerRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm function;
  late _ReferenceRealm actor;
}
@RealmModel()
class _ImagingStudyInstanceRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirIdRealm uid;
  late _PrimitiveElementRealm uidElement;
  late _CodingRealm sopClass;
  late _FhirUnsignedIntRealm number;
  late _PrimitiveElementRealm numberElement;
  late String title;
  late _PrimitiveElementRealm titleElement;
}
