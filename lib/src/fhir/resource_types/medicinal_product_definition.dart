import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class MedicinalProductDefinition extends DomainResource {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
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
  @override
  MedicinalProductDefinition clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class MedicinalProductDefinitionContact extends BackboneElement {
  MedicinalProductDefinitionContact({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    required this.contact,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final CodeableConcept? type;
  final Reference contact;
  @override
  MedicinalProductDefinitionContact clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class MedicinalProductDefinitionName extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirString productName;
  final Element? productNameElement;
  final CodeableConcept? type;
  final List<MedicinalProductDefinitionNamePart>? namePart;
  final List<MedicinalProductDefinitionCountryLanguage>? countryLanguage;
  @override
  MedicinalProductDefinitionName clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class MedicinalProductDefinitionNamePart extends BackboneElement {
  MedicinalProductDefinitionNamePart({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.part_,
    this.partElement,
    required this.type,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirString part_;
  final Element? partElement;
  final CodeableConcept type;
  @override
  MedicinalProductDefinitionNamePart clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class MedicinalProductDefinitionCountryLanguage extends BackboneElement {
  MedicinalProductDefinitionCountryLanguage({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.country,
    this.jurisdiction,
    required this.language,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final CodeableConcept country;
  final CodeableConcept? jurisdiction;
  final CodeableConcept language;
  @override
  MedicinalProductDefinitionCountryLanguage clone() =>
      throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class MedicinalProductDefinitionCrossReference extends BackboneElement {
  MedicinalProductDefinitionCrossReference({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.product,
    this.type,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final CodeableReference product;
  final CodeableConcept? type;
  @override
  MedicinalProductDefinitionCrossReference clone() =>
      throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class MedicinalProductDefinitionOperation extends BackboneElement {
  MedicinalProductDefinitionOperation({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.effectiveDate,
    this.organization,
    this.confidentialityIndicator,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final CodeableReference? type;
  final Period? effectiveDate;
  final List<Reference>? organization;
  final CodeableConcept? confidentialityIndicator;
  @override
  MedicinalProductDefinitionOperation clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class MedicinalProductDefinitionCharacteristic extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final CodeableConcept type;
  final CodeableConcept? valueCodeableConcept;
  final Quantity? valueQuantity;
  final FhirDate? valueDate;
  final Element? valueDateElement;
  final FhirBoolean? valueBoolean;
  final Element? valueBooleanElement;
  final Attachment? valueAttachment;
  @override
  MedicinalProductDefinitionCharacteristic clone() =>
      throw UnimplementedError();
}
