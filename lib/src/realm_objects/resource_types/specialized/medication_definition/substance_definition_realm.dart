import 'package:realm/realm.dart';
@RealmModel()
class _SubstanceDefinitionRealm {
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
  late String version;
  late _PrimitiveElementRealm versionElement;
  late _CodeableConceptRealm status;
@RealmModel()
class _classification,Realm {
  late _CodeableConceptRealm domain;
  late List<_CodeableConceptRealm> grade;
  late _FhirMarkdownRealm description;
  late _PrimitiveElementRealm descriptionElement;
  late List<_ReferenceRealm> informationSource;
  late List<_AnnotationRealm> note;
  late List<_ReferenceRealm> manufacturer;
  late List<_ReferenceRealm> supplier;
  late List<_SubstanceDefinitionMoietyRealm> moiety;
  late List<_SubstanceDefinitionPropertyRealm> property;
  late List<_SubstanceDefinitionMolecularWeightRealm> molecularWeight;
  late _SubstanceDefinitionStructureRealm structure;
  late List<_SubstanceDefinitionCodeRealm> code;
  late List<_SubstanceDefinitionNameRealm> name;
  late List<_SubstanceDefinitionRelationshipRealm> relationship;
  late _SubstanceDefinitionSourceMaterialRealm sourceMaterial;
}
@RealmModel()
class _SubstanceDefinitionMoietyRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm role;
  late _IdentifierRealm identifier;
  late String name;
  late _PrimitiveElementRealm nameElement;
  late _CodeableConceptRealm stereochemistry;
  late _CodeableConceptRealm opticalActivity;
  late String molecularFormula;
  late _PrimitiveElementRealm molecularFormulaElement;
  late _QuantityRealm amountQuantity;
  late _FhirMarkdownRealm amountString;
  late _PrimitiveElementRealm amountStringElement;
  late _CodeableConceptRealm measurementType;
}
@RealmModel()
class _SubstanceDefinitionPropertyRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm type;
  late _CodeableConceptRealm valueCodeableConcept;
  late _QuantityRealm valueQuantity;
  late _FhirDateRealm valueDate;
  late _PrimitiveElementRealm valueDateElement;
  late _FhirBooleanRealm valueBoolean;
  late _PrimitiveElementRealm valueBooleanElement;
  late _AttachmentRealm valueAttachment;
}
@RealmModel()
class _SubstanceDefinitionMolecularWeightRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm method;
  late _CodeableConceptRealm type;
  late _QuantityRealm amount;
}
@RealmModel()
class _SubstanceDefinitionStructureRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm stereochemistry;
  late _CodeableConceptRealm opticalActivity;
  late String molecularFormula;
  late _PrimitiveElementRealm molecularFormulaElement;
  late String molecularFormulaByMoiety;
  late _PrimitiveElementRealm molecularFormulaByMoietyElement;
  late _SubstanceDefinitionMolecularWeightRealm molecularWeight;
  late List<_CodeableConceptRealm> technique;
  late List<_ReferenceRealm> sourceDocument;
  late List<_SubstanceDefinitionRepresentationRealm> representation;
}
@RealmModel()
class _SubstanceDefinitionRepresentationRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm type;
  late String representation;
  late _PrimitiveElementRealm representationElement;
  late _CodeableConceptRealm format;
  late _ReferenceRealm document;
}
@RealmModel()
class _SubstanceDefinitionCodeRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm code;
  late _CodeableConceptRealm status;
  late String statusDate;
  late _PrimitiveElementRealm statusDateElement;
  late List<_AnnotationRealm> note;
  late List<_ReferenceRealm> source;
}
@RealmModel()
class _SubstanceDefinitionNameRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String name;
  late _PrimitiveElementRealm nameElement;
  late _CodeableConceptRealm type;
  late _CodeableConceptRealm status;
  late _FhirBooleanRealm preferred;
  late _PrimitiveElementRealm preferredElement;
  late List<_CodeableConceptRealm> language;
  late List<_CodeableConceptRealm> domain;
  late List<_CodeableConceptRealm> jurisdiction;
  late List<_SubstanceDefinitionNameRealm> synonym;
  late List<_SubstanceDefinitionNameRealm> translation;
  late List<_SubstanceDefinitionOfficialRealm> official;
  late List<_ReferenceRealm> source;
}
@RealmModel()
class _SubstanceDefinitionOfficialRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm authority;
  late _CodeableConceptRealm status;
  late String date;
  late _PrimitiveElementRealm dateElement;
}
@RealmModel()
class _SubstanceDefinitionRelationshipRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _ReferenceRealm substanceDefinitionReference;
  late _CodeableConceptRealm substanceDefinitionCodeableConcept;
  late _CodeableConceptRealm type;
  late _FhirBooleanRealm isDefining;
  late _PrimitiveElementRealm isDefiningElement;
  late _QuantityRealm amountQuantity;
  late _RatioRealm amountRatio;
  late _FhirMarkdownRealm amountString;
  late _PrimitiveElementRealm amountStringElement;
  late _RatioRealm ratioHighLimitAmount;
  late _CodeableConceptRealm comparator;
  late List<_ReferenceRealm> source;
}
@RealmModel()
class _SubstanceDefinitionSourceMaterialRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm type;
  late _CodeableConceptRealm genus;
  late _CodeableConceptRealm species;
  late _CodeableConceptRealm part_;
  late List<_CodeableConceptRealm> countryOfOrigin;
}
