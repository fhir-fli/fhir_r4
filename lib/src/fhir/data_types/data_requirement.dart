import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class DataRequirement extends DataType {
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

  @override
  DataRequirement clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class DataRequirementCodeFilter extends BackboneElement {
  final FhirString? path;
  final Element? pathElement;
  final FhirString? searchParam;
  final Element? searchParamElement;
  final FhirCanonical? valueSet;
  final Element? valueSetElement;
  final List<Coding>? code;

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

  @override
  DataRequirementCodeFilter clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class DataRequirementDateFilter extends BackboneElement {
  final FhirString? path;
  final Element? pathElement;
  final FhirString? searchParam;
  final Element? searchParamElement;
  final FhirDateTime? valueDateTime;
  final Element? valueDateTimeElement;
  final Period? valuePeriod;
  final FhirDuration? valueDuration;

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

  @override
  DataRequirementDateFilter clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class DataRequirementSort extends BackboneElement {
  final FhirString path;
  final Element? pathElement;
  final FhirCode direction;
  final Element? directionElement;

  DataRequirementSort({
    super.id,
    super.extension_,
    required this.path,
    this.pathElement,
    required this.direction,
    this.directionElement,
  });

  @override
  DataRequirementSort clone() => throw UnimplementedError();
}
