import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class MedicinalProductDefinition {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final CodeableConcept type;
  final CodeableConcept domain;
  final String version;
  final PrimitiveElement versionElement;
  final CodeableConcept status;
  final FhirDateTime statusDate;
  final PrimitiveElement statusDateElement;
  final FhirMarkdown description;
  final PrimitiveElement descriptionElement;
  final CodeableConcept combinedPharmaceuticalDoseForm;
  final List<CodeableConcept> route;
  final FhirMarkdown indication;
  final PrimitiveElement indicationElement;
  final CodeableConcept legalStatusOfSupply;
  final CodeableConcept additionalMonitoringIndicator;
  final List<CodeableConcept> specialMeasures;
  final CodeableConcept pediatricUseIndicator;
  final List<CodeableConcept> classification;
  final List<MarketingStatus> marketingStatus;
  final List<CodeableConcept> packagedMedicinalProduct;
  final List<CodeableConcept> ingredient;
  final List<CodeableReference> impurity;
  final List<Reference> attachedDocument;
  final List<Reference> masterFile;
  final List<MedicinalProductDefinitionContact> contact;
  final List<Reference> clinicalTrial;
  final List<Coding> code;
  final List<MedicinalProductDefinitionName> name;
  final List<MedicinalProductDefinitionCrossReference> crossReference;
  final List<MedicinalProductDefinitionOperation> operation;
  final List<MedicinalProductDefinitionCharacteristic> characteristic;
  const MedicinalProductDefinition({
    required this.resourceType,
    required this.id,
    required this.meta,
    required this.implicitRules,
    required this.implicitRulesElement,
    required this.language,
    required this.languageElement,
    required this.text,
    required this.contained,
    required this.extension_,
    required this.modifierExtension,
    required this.identifier,
    required this.type,
    required this.domain,
    required this.version,
    required this.versionElement,
    required this.status,
    required this.statusDate,
    required this.statusDateElement,
    required this.description,
    required this.descriptionElement,
    required this.combinedPharmaceuticalDoseForm,
    required this.route,
    required this.indication,
    required this.indicationElement,
    required this.legalStatusOfSupply,
    required this.additionalMonitoringIndicator,
    required this.specialMeasures,
    required this.pediatricUseIndicator,
    required this.classification,
    required this.marketingStatus,
    required this.packagedMedicinalProduct,
    required this.ingredient,
    required this.impurity,
    required this.attachedDocument,
    required this.masterFile,
    required this.contact,
    required this.clinicalTrial,
    required this.code,
    required this.name,
    required this.crossReference,
    required this.operation,
    required this.characteristic,
  });
}

@Data()
@JsonCodable()
class MedicinalProductDefinitionContact {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final Reference contact;
  const MedicinalProductDefinitionContact({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.contact,
  });
}

@Data()
@JsonCodable()
class MedicinalProductDefinitionName {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String productName;
  final PrimitiveElement productNameElement;
  final CodeableConcept type;
  final List<MedicinalProductDefinitionNamePart> namePart;
  final List<MedicinalProductDefinitionCountryLanguage> countryLanguage;
  const MedicinalProductDefinitionName({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.productName,
    required this.productNameElement,
    required this.type,
    required this.namePart,
    required this.countryLanguage,
  });
}

@Data()
@JsonCodable()
class MedicinalProductDefinitionNamePart {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String part_;
  final PrimitiveElement partElement;
  final CodeableConcept type;
  const MedicinalProductDefinitionNamePart({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.part_,
    required this.partElement,
    required this.type,
  });
}

@Data()
@JsonCodable()
class MedicinalProductDefinitionCountryLanguage {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept country;
  final CodeableConcept jurisdiction;
  final CodeableConcept language;
  const MedicinalProductDefinitionCountryLanguage({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.country,
    required this.jurisdiction,
    required this.language,
  });
}

@Data()
@JsonCodable()
class MedicinalProductDefinitionCrossReference {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableReference product;
  final CodeableConcept type;
  const MedicinalProductDefinitionCrossReference({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.product,
    required this.type,
  });
}

@Data()
@JsonCodable()
class MedicinalProductDefinitionOperation {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableReference type;
  final Period effectiveDate;
  final List<Reference> organization;
  final CodeableConcept confidentialityIndicator;
  const MedicinalProductDefinitionOperation({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.effectiveDate,
    required this.organization,
    required this.confidentialityIndicator,
  });
}

@Data()
@JsonCodable()
class MedicinalProductDefinitionCharacteristic {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final CodeableConcept valueCodeableConcept;
  final Quantity valueQuantity;
  final String valueDate;
  final PrimitiveElement valueDateElement;
  final bool valueBoolean;
  final PrimitiveElement valueBooleanElement;
  final Attachment valueAttachment;
  const MedicinalProductDefinitionCharacteristic({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.valueCodeableConcept,
    required this.valueQuantity,
    required this.valueDate,
    required this.valueDateElement,
    required this.valueBoolean,
    required this.valueBooleanElement,
    required this.valueAttachment,
  });
}


