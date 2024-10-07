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
  }) : super(resourceType: R4ResourceType.MedicinalProductDefinition);

  @override
  MedicinalProductDefinition clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class MedicinalProductDefinitionContact extends BackboneElement {
  final CodeableConcept? type;
  final Reference contact;

  MedicinalProductDefinitionContact({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    required this.contact,
  });

  @override
  MedicinalProductDefinitionContact clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class MedicinalProductDefinitionName extends BackboneElement {
  final FhirString productName;
  final Element? productNameElement;
  final CodeableConcept? type;
  final List<MedicinalProductDefinitionNamePart>? namePart;
  final List<MedicinalProductDefinitionCountryLanguage>? countryLanguage;

  MedicinalProductDefinitionName({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.productName,
    this.productNameElement,
    this.type,
    this.namePart,
    this.countryLanguage,
  });

  @override
  MedicinalProductDefinitionName clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class MedicinalProductDefinitionNamePart extends BackboneElement {
  final FhirString part_;
  final Element? partElement;
  final CodeableConcept type;

  MedicinalProductDefinitionNamePart({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.part_,
    this.partElement,
    required this.type,
  });

  @override
  MedicinalProductDefinitionNamePart clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class MedicinalProductDefinitionCountryLanguage extends BackboneElement {
  final CodeableConcept country;
  final CodeableConcept? jurisdiction;
  final CodeableConcept language;

  MedicinalProductDefinitionCountryLanguage({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.country,
    this.jurisdiction,
    required this.language,
  });

  @override
  MedicinalProductDefinitionCountryLanguage clone() =>
      throw UnimplementedError();
}

@Data()
@JsonCodable()
class MedicinalProductDefinitionCrossReference extends BackboneElement {
  final CodeableReference product;
  final CodeableConcept? type;

  MedicinalProductDefinitionCrossReference({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.product,
    this.type,
  });

  @override
  MedicinalProductDefinitionCrossReference clone() =>
      throw UnimplementedError();
}

@Data()
@JsonCodable()
class MedicinalProductDefinitionOperation extends BackboneElement {
  final CodeableReference? type;
  final Period? effectiveDate;
  final List<Reference>? organization;
  final CodeableConcept? confidentialityIndicator;

  MedicinalProductDefinitionOperation({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.effectiveDate,
    this.organization,
    this.confidentialityIndicator,
  });

  @override
  MedicinalProductDefinitionOperation clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class MedicinalProductDefinitionCharacteristic extends BackboneElement {
  final CodeableConcept type;
  final CodeableConcept? valueCodeableConcept;
  final Quantity? valueQuantity;
  final FhirDate? valueDate;
  final Element? valueDateElement;
  final FhirBoolean? valueBoolean;
  final Element? valueBooleanElement;
  final Attachment? valueAttachment;

  MedicinalProductDefinitionCharacteristic({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.valueCodeableConcept,
    this.valueQuantity,
    this.valueDate,
    this.valueDateElement,
    this.valueBoolean,
    this.valueBooleanElement,
    this.valueAttachment,
  });

  @override
  MedicinalProductDefinitionCharacteristic clone() =>
      throw UnimplementedError();
}
