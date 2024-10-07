import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class ObservationDefinition extends DomainResource {
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
  }) : super(resourceType: R4ResourceType.ObservationDefinition);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
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
  @override
  ObservationDefinition clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ObservationDefinitionQuantitativeDetails extends BackboneElement {
  ObservationDefinitionQuantitativeDetails({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.customaryUnit,
    this.unit,
    this.conversionFactor,
    this.conversionFactorElement,
    this.decimalPrecision,
    this.decimalPrecisionElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final CodeableConcept? customaryUnit;
  final CodeableConcept? unit;
  final FhirDecimal? conversionFactor;
  final Element? conversionFactorElement;
  final FhirInteger? decimalPrecision;
  final Element? decimalPrecisionElement;
  @override
  ObservationDefinitionQuantitativeDetails clone() =>
      throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ObservationDefinitionQualifiedInterval extends BackboneElement {
  ObservationDefinitionQualifiedInterval({
    super.id,
    super.extension_,
    super.modifierExtension,
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
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
  @override
  ObservationDefinitionQualifiedInterval clone() => throw UnimplementedError();
}
