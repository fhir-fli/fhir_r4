import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class DataRequirement extends DataType {
  final FhirCode? type;
  final Element? typeElement;
  final List<FhirCanonical>? profile;
  final CodeableConcept? subjectCodeableConcept;
  final Reference? subjectReference;
  final List<FhirString>? mustSupport;
  final List<Element>? mustSupportElement;
  final List<DataRequirementCodeFilter>? codeFilter;
  final List<DataRequirementDateFilter>? dateFilter;
  final FhirPositiveInt? limit;
  final Element? limitElement;
  final List<DataRequirementSort>? sort;

  DataRequirement({
    super.id,
    super.extension_,
    this.type,
    this.typeElement,
    this.profile,
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

}


@Data()
@JsonCodable()
class DataRequirementCodeFilter {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirString? path;
  final Element? pathElement;
  final FhirString? searchParam;
  final Element? searchParamElement;
  final FhirCanonical? valueSet;
  final List<Coding>? code;

  DataRequirementCodeFilter({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.path,
    this.pathElement,
    this.searchParam,
    this.searchParamElement,
    this.valueSet,
    this.code,
  });

}


@Data()
@JsonCodable()
class DataRequirementDateFilter {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirString? path;
  final Element? pathElement;
  final FhirString? searchParam;
  final Element? searchParamElement;
  final FhirString? valueDateTime;
  final Element? valueDateTimeElement;
  final Period? valuePeriod;
  final FhirDuration? valueDuration;

  DataRequirementDateFilter({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.path,
    this.pathElement,
    this.searchParam,
    this.searchParamElement,
    this.valueDateTime,
    this.valueDateTimeElement,
    this.valuePeriod,
    this.valueDuration,
  });

}


@Data()
@JsonCodable()
class DataRequirementSort {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirString? path;
  final Element? pathElement;
  final dynamic? direction;
  final Element? directionElement;

  DataRequirementSort({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.path,
    this.pathElement,
    this.direction,
    this.directionElement,
  });

}



