import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
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
@Entity()
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
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
@Entity()
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
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
@Entity()
class DataRequirementSort extends Element {
  DataRequirementSort({
    super.id,
    super.extension_,
    required this.path,
    this.pathElement,
    required this.direction,
    this.directionElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirString path;
  final Element? pathElement;
  final FhirCode direction;
  final Element? directionElement;
  @override
  DataRequirementSort clone() => throw UnimplementedError();
}
