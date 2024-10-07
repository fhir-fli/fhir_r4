import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
class DataRequirement extends DataType {
  DataRequirement({
    super.id,
    super.extension_,
    required this.type,
    this.typeElement,
    this.profile,
    this.profileElement,
    this.subjectCodeableConcept,
    this.subjectReference,
    this.mustSupport,
    this.mustSupportElement,
    this.codeFilter,
    this.dateFilter,
    this.limit,
    this.limitElement,
    this.sort,
  });

  final FhirCode type;
  final Element? typeElement;
  final List<FhirCanonical>? profile;
  final List<Element>? profileElement;
  final CodeableConcept? subjectCodeableConcept;
  final Reference? subjectReference;
  final List<FhirString>? mustSupport;
  final List<Element>? mustSupportElement;
  final List<Element>? codeFilter;
  final List<Element>? dateFilter;
  final FhirPositiveInt? limit;
  final Element? limitElement;
  final List<Element>? sort;
  @override
  DataRequirement clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class DataRequirementCodeFilter extends Element {
  DataRequirementCodeFilter({
    super.id,
    super.extension_,
    this.path,
    this.pathElement,
    this.searchParam,
    this.searchParamElement,
    this.valueSet,
    this.valueSetElement,
    this.code,
  });

  final FhirString? path;
  final Element? pathElement;
  final FhirString? searchParam;
  final Element? searchParamElement;
  final FhirCanonical? valueSet;
  final Element? valueSetElement;
  final List<Coding>? code;
  @override
  DataRequirementCodeFilter clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class DataRequirementDateFilter extends Element {
  DataRequirementDateFilter({
    super.id,
    super.extension_,
    this.path,
    this.pathElement,
    this.searchParam,
    this.searchParamElement,
    this.valueDateTime,
    this.valueDateTimeElement,
    this.valuePeriod,
    this.valueDuration,
  });

  final FhirString? path;
  final Element? pathElement;
  final FhirString? searchParam;
  final Element? searchParamElement;
  final FhirDateTime? valueDateTime;
  final Element? valueDateTimeElement;
  final Period? valuePeriod;
  final FhirDuration? valueDuration;
  @override
  DataRequirementDateFilter clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class DataRequirementSort extends Element {
  DataRequirementSort({
    super.id,
    super.extension_,
    required this.path,
    this.pathElement,
    required this.direction,
    this.directionElement,
  });

  final FhirString path;
  final Element? pathElement;
  final FhirCode direction;
  final Element? directionElement;
  @override
  DataRequirementSort clone() => throw UnimplementedError();
}
