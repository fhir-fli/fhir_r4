import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [ObservationDefinition] /// Set of definitional characteristics for a kind of observation or
/// measurement produced or consumed by an orderable health care service.
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

  /// [category] /// A code that classifies the general type of observation.
  final List<CodeableConcept>? category;

  /// [code] /// Describes what will be observed. Sometimes this is called the observation
  /// "name".
  final CodeableConcept code;

  /// [identifier] /// A unique identifier assigned to this ObservationDefinition artifact.
  final List<Identifier>? identifier;

  /// [permittedDataType] /// The data types allowed for the value element of the instance observations
  /// conforming to this ObservationDefinition.
  final List<FhirCode>? permittedDataType;
  final List<Element>? permittedDataTypeElement;

  /// [multipleResultsAllowed] /// Multiple results allowed for observations conforming to this
  /// ObservationDefinition.
  final FhirBoolean? multipleResultsAllowed;
  final Element? multipleResultsAllowedElement;

  /// [method] /// The method or technique used to perform the observation.
  final CodeableConcept? method;

  /// [preferredReportName] /// The preferred name to be used when reporting the results of observations
  /// conforming to this ObservationDefinition.
  final FhirString? preferredReportName;
  final Element? preferredReportNameElement;

  /// [quantitativeDetails] /// Characteristics for quantitative results of this observation.
  final ObservationDefinitionQuantitativeDetails? quantitativeDetails;

  /// [qualifiedInterval] /// Multiple ranges of results qualified by different contexts for ordinal or
  /// continuous observations conforming to this ObservationDefinition.
  final List<ObservationDefinitionQualifiedInterval>? qualifiedInterval;

  /// [validCodedValueSet] /// The set of valid coded results for the observations conforming to this
  /// ObservationDefinition.
  final Reference? validCodedValueSet;

  /// [normalCodedValueSet] /// The set of normal coded results for the observations conforming to this
  /// ObservationDefinition.
  final Reference? normalCodedValueSet;

  /// [abnormalCodedValueSet] /// The set of abnormal coded results for the observation conforming to this
  /// ObservationDefinition.
  final Reference? abnormalCodedValueSet;

  /// [criticalCodedValueSet] /// The set of critical coded results for the observation conforming to this
  /// ObservationDefinition.
  final Reference? criticalCodedValueSet;
  @override
  ObservationDefinition clone() => throw UnimplementedError();
  ObservationDefinition copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableConcept>? category,
    CodeableConcept? code,
    List<Identifier>? identifier,
    List<FhirCode>? permittedDataType,
    List<Element>? permittedDataTypeElement,
    FhirBoolean? multipleResultsAllowed,
    Element? multipleResultsAllowedElement,
    CodeableConcept? method,
    FhirString? preferredReportName,
    Element? preferredReportNameElement,
    ObservationDefinitionQuantitativeDetails? quantitativeDetails,
    List<ObservationDefinitionQualifiedInterval>? qualifiedInterval,
    Reference? validCodedValueSet,
    Reference? normalCodedValueSet,
    Reference? abnormalCodedValueSet,
    Reference? criticalCodedValueSet,
  }) {
    return ObservationDefinition(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      category: category ?? this.category,
      code: code ?? this.code,
      identifier: identifier ?? this.identifier,
      permittedDataType: permittedDataType ?? this.permittedDataType,
      permittedDataTypeElement:
          permittedDataTypeElement ?? this.permittedDataTypeElement,
      multipleResultsAllowed:
          multipleResultsAllowed ?? this.multipleResultsAllowed,
      multipleResultsAllowedElement:
          multipleResultsAllowedElement ?? this.multipleResultsAllowedElement,
      method: method ?? this.method,
      preferredReportName: preferredReportName ?? this.preferredReportName,
      preferredReportNameElement:
          preferredReportNameElement ?? this.preferredReportNameElement,
      quantitativeDetails: quantitativeDetails ?? this.quantitativeDetails,
      qualifiedInterval: qualifiedInterval ?? this.qualifiedInterval,
      validCodedValueSet: validCodedValueSet ?? this.validCodedValueSet,
      normalCodedValueSet: normalCodedValueSet ?? this.normalCodedValueSet,
      abnormalCodedValueSet:
          abnormalCodedValueSet ?? this.abnormalCodedValueSet,
      criticalCodedValueSet:
          criticalCodedValueSet ?? this.criticalCodedValueSet,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ObservationDefinitionQuantitativeDetails] /// Characteristics for quantitative results of this observation.
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

  /// [customaryUnit] /// Customary unit used to report quantitative results of observations
  /// conforming to this ObservationDefinition.
  final CodeableConcept? customaryUnit;

  /// [unit] /// SI unit used to report quantitative results of observations conforming to
  /// this ObservationDefinition.
  final CodeableConcept? unit;

  /// [conversionFactor] /// Factor for converting value expressed with SI unit to value expressed with
  /// customary unit.
  final FhirDecimal? conversionFactor;
  final Element? conversionFactorElement;

  /// [decimalPrecision] /// Number of digits after decimal separator when the results of such
  /// observations are of type Quantity.
  final FhirInteger? decimalPrecision;
  final Element? decimalPrecisionElement;
  @override
  ObservationDefinitionQuantitativeDetails clone() =>
      throw UnimplementedError();
  ObservationDefinitionQuantitativeDetails copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? customaryUnit,
    CodeableConcept? unit,
    FhirDecimal? conversionFactor,
    Element? conversionFactorElement,
    FhirInteger? decimalPrecision,
    Element? decimalPrecisionElement,
  }) {
    return ObservationDefinitionQuantitativeDetails(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      customaryUnit: customaryUnit ?? this.customaryUnit,
      unit: unit ?? this.unit,
      conversionFactor: conversionFactor ?? this.conversionFactor,
      conversionFactorElement:
          conversionFactorElement ?? this.conversionFactorElement,
      decimalPrecision: decimalPrecision ?? this.decimalPrecision,
      decimalPrecisionElement:
          decimalPrecisionElement ?? this.decimalPrecisionElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ObservationDefinitionQualifiedInterval] /// Multiple ranges of results qualified by different contexts for ordinal or
/// continuous observations conforming to this ObservationDefinition.
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

  /// [category] /// The category of interval of values for continuous or ordinal observations
  /// conforming to this ObservationDefinition.
  final FhirCode? category;
  final Element? categoryElement;

  /// [range] /// The low and high values determining the interval. There may be only one of
  /// the two.
  final Range? range;

  /// [context] /// Codes to indicate the health context the range applies to. For example, the
  /// normal or therapeutic range.
  final CodeableConcept? context;

  /// [appliesTo] /// Codes to indicate the target population this reference range applies to.
  final List<CodeableConcept>? appliesTo;

  /// [gender] /// Sex of the population the range applies to.
  final FhirCode? gender;
  final Element? genderElement;

  /// [age] /// The age at which this reference range is applicable. This is a neonatal age
  /// (e.g. number of weeks at term) if the meaning says so.
  final Range? age;

  /// [gestationalAge] /// The gestational age to which this reference range is applicable, in the
  /// context of pregnancy.
  final Range? gestationalAge;

  /// [condition] /// Text based condition for which the reference range is valid.
  final FhirString? condition;
  final Element? conditionElement;
  @override
  ObservationDefinitionQualifiedInterval clone() => throw UnimplementedError();
  ObservationDefinitionQualifiedInterval copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? category,
    Element? categoryElement,
    Range? range,
    CodeableConcept? context,
    List<CodeableConcept>? appliesTo,
    FhirCode? gender,
    Element? genderElement,
    Range? age,
    Range? gestationalAge,
    FhirString? condition,
    Element? conditionElement,
  }) {
    return ObservationDefinitionQualifiedInterval(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      category: category ?? this.category,
      categoryElement: categoryElement ?? this.categoryElement,
      range: range ?? this.range,
      context: context ?? this.context,
      appliesTo: appliesTo ?? this.appliesTo,
      gender: gender ?? this.gender,
      genderElement: genderElement ?? this.genderElement,
      age: age ?? this.age,
      gestationalAge: gestationalAge ?? this.gestationalAge,
      condition: condition ?? this.condition,
      conditionElement: conditionElement ?? this.conditionElement,
    );
  }
}
