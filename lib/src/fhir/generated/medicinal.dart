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
}

@Data()
@JsonCodable()
class MedicinalProductDefinitionContact {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final Reference contact;
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
}

@Data()
@JsonCodable()
class MedicinalProductDefinitionCrossReference {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableReference product;
  final CodeableConcept type;
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
}

