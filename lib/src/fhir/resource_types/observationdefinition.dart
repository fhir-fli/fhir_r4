import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class ObservationDefinition extends DomainResource {
  final List<CodeableConcept>? category;
  final CodeableConcept code;
  final List<Identifier>? identifier;
  final List<FhirCode>? permittedDataType;
  final List<Element>? permittedDataTypeElement;
  final FhirBoolean? multipleResultsAllowed;
  final Element? multipleResultsAllowedElement;
  final CodeableConcept? method;
  final FhirString? preferredReportName;
  final Element? preferredReportNameElement;
  final ObservationDefinitionQuantitativeDetails? quantitativeDetails;
  final List<ObservationDefinitionQualifiedInterval>? qualifiedInterval;
  final Reference? validCodedValueSet;
  final Reference? normalCodedValueSet;
  final Reference? abnormalCodedValueSet;
  final Reference? criticalCodedValueSet;

  ObservationDefinition({
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
    this.category,
    required this.code,
    this.identifier,
    this.permittedDataType,
    this.permittedDataTypeElement,
    this.multipleResultsAllowed,
    this.multipleResultsAllowedElement,
    this.method,
    this.preferredReportName,
    this.preferredReportNameElement,
    this.quantitativeDetails,
    this.qualifiedInterval,
    this.validCodedValueSet,
    this.normalCodedValueSet,
    this.abnormalCodedValueSet,
    this.criticalCodedValueSet,
  }): super(resourceType: R4ResourceType.ObservationDefinition);

@override
ObservationDefinition clone() => this;

}


@Data()
@JsonCodable()
class ObservationDefinitionQuantitativeDetails {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept? customaryUnit;
  final CodeableConcept? unit;
  final FhirDecimal? conversionFactor;
  final Element? conversionFactorElement;
  final FhirInteger? decimalPrecision;
  final Element? decimalPrecisionElement;

  ObservationDefinitionQuantitativeDetails({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.customaryUnit,
    this.unit,
    this.conversionFactor,
    this.conversionFactorElement,
    this.decimalPrecision,
    this.decimalPrecisionElement,
  });

}


@Data()
@JsonCodable()
class ObservationDefinitionQualifiedInterval {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirCode? category;
  final Element? categoryElement;
  final Range? range;
  final CodeableConcept? context;
  final List<CodeableConcept>? appliesTo;
  final FhirCode? gender;
  final Element? genderElement;
  final Range? age;
  final Range? gestationalAge;
  final FhirString? condition;
  final Element? conditionElement;

  ObservationDefinitionQualifiedInterval({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.category,
    this.categoryElement,
    this.range,
    this.context,
    this.appliesTo,
    this.gender,
    this.genderElement,
    this.age,
    this.gestationalAge,
    this.condition,
    this.conditionElement,
  });

}



