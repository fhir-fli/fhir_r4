import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class MedicinalProductDefinition extends DomainResource {
  final List<Identifier>? identifier;
  final CodeableConcept? type;
  final CodeableConcept? domain;
  final FhirString? version;
  final Element? versionElement;
  final CodeableConcept? status;
  final FhirDateTime? statusDate;
  final Element? statusDateElement;
  final FhirMarkdown? description;
  final Element? descriptionElement;
  final CodeableConcept? combinedPharmaceuticalDoseForm;
  final List<CodeableConcept>? route;
  final FhirMarkdown? indication;
  final Element? indicationElement;
  final CodeableConcept? legalStatusOfSupply;
  final CodeableConcept? additionalMonitoringIndicator;
  final List<CodeableConcept>? specialMeasures;
  final CodeableConcept? pediatricUseIndicator;
  final List<CodeableConcept>? classification;
  final List<MarketingStatus>? marketingStatus;
  final List<CodeableConcept>? packagedMedicinalProduct;
  final List<CodeableConcept>? ingredient;
  final List<CodeableReference>? impurity;
  final List<Reference>? attachedDocument;
  final List<Reference>? masterFile;
  final List<MedicinalProductDefinitionContact>? contact;
  final List<Reference>? clinicalTrial;
  final List<Coding>? code;
  final List<MedicinalProductDefinitionName> name;
  final List<MedicinalProductDefinitionCrossReference>? crossReference;
  final List<MedicinalProductDefinitionOperation>? operation;
  final List<MedicinalProductDefinitionCharacteristic>? characteristic;

  MedicinalProductDefinition({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.type,
    this.domain,
    this.version,
    this.versionElement,
    this.status,
    this.statusDate,
    this.statusDateElement,
    this.description,
    this.descriptionElement,
    this.combinedPharmaceuticalDoseForm,
    this.route,
    this.indication,
    this.indicationElement,
    this.legalStatusOfSupply,
    this.additionalMonitoringIndicator,
    this.specialMeasures,
    this.pediatricUseIndicator,
    this.classification,
    this.marketingStatus,
    this.packagedMedicinalProduct,
    this.ingredient,
    this.impurity,
    this.attachedDocument,
    this.masterFile,
    this.contact,
    this.clinicalTrial,
    this.code,
    required this.name,
    this.crossReference,
    this.operation,
    this.characteristic,
  }): super(resourceType: R4ResourceType.MedicinalProductDefinition);

@override
MedicinalProductDefinition clone() => this;

}


@Data()
@JsonCodable()
class MedicinalProductDefinitionContact {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept? type;
  final Reference contact;

  MedicinalProductDefinitionContact({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    required this.contact,
  });

}


@Data()
@JsonCodable()
class MedicinalProductDefinitionName {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirString? productName;
  final Element? productNameElement;
  final CodeableConcept? type;
  final List<MedicinalProductDefinitionNamePart>? namePart;
  final List<MedicinalProductDefinitionCountryLanguage>? countryLanguage;

  MedicinalProductDefinitionName({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.productName,
    this.productNameElement,
    this.type,
    this.namePart,
    this.countryLanguage,
  });

}


@Data()
@JsonCodable()
class MedicinalProductDefinitionNamePart {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirString? part_;
  final Element? partElement;
  final CodeableConcept type;

  MedicinalProductDefinitionNamePart({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.part_,
    this.partElement,
    required this.type,
  });

}


@Data()
@JsonCodable()
class MedicinalProductDefinitionCountryLanguage {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept country;
  final CodeableConcept? jurisdiction;
  final CodeableConcept language;

  MedicinalProductDefinitionCountryLanguage({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.country,
    this.jurisdiction,
    required this.language,
  });

}


@Data()
@JsonCodable()
class MedicinalProductDefinitionCrossReference {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableReference product;
  final CodeableConcept? type;

  MedicinalProductDefinitionCrossReference({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.product,
    this.type,
  });

}


@Data()
@JsonCodable()
class MedicinalProductDefinitionOperation {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableReference? type;
  final Period? effectiveDate;
  final List<Reference>? organization;
  final CodeableConcept? confidentialityIndicator;

  MedicinalProductDefinitionOperation({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.effectiveDate,
    this.organization,
    this.confidentialityIndicator,
  });

}


@Data()
@JsonCodable()
class MedicinalProductDefinitionCharacteristic {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept type;
  final CodeableConcept? valueCodeableConcept;
  final Quantity? valueQuantity;
  final FhirString? valueDate;
  final Element? valueDateElement;
  final bool? valueBoolean;
  final Element? valueBooleanElement;
  final Attachment? valueAttachment;

  MedicinalProductDefinitionCharacteristic({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.valueCodeableConcept,
    this.valueQuantity,
    this.valueDate,
    this.valueDateElement,
    this.valueBoolean,
    this.valueBooleanElement,
    this.valueAttachment,
  });

}



