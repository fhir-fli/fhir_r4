import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class DataRequirement {
  final String id;
  final List<FhirExtension> extension_;
  final FhirCode type;
  final PrimitiveElement typeElement;
  final List<FhirCanonical> profile;
  final CodeableConcept subjectCodeableConcept;
  final Reference subjectReference;
  final List<String> mustSupport;
  final List<PrimitiveElement> mustSupportElement;
  final List<DataRequirementCodeFilter> codeFilter;
  final List<DataRequirementDateFilter> dateFilter;
  final FhirPositiveInt limit;
  final PrimitiveElement limitElement;
  final List<DataRequirementSort> sort;
  const DataRequirement({
    required this.id,
    required this.extension_,
    required this.type,
    required this.typeElement,
    required this.profile,
    required this.subjectCodeableConcept,
    required this.subjectReference,
    required this.mustSupport,
    required this.mustSupportElement,
    required this.codeFilter,
    required this.dateFilter,
    required this.limit,
    required this.limitElement,
    required this.sort,
  });
}

@Data()
@JsonCodable()
class DataRequirementCodeFilter {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String path;
  final PrimitiveElement pathElement;
  final String searchParam;
  final PrimitiveElement searchParamElement;
  final FhirCanonical valueSet;
  final List<Coding> code;
  const DataRequirementCodeFilter({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.path,
    required this.pathElement,
    required this.searchParam,
    required this.searchParamElement,
    required this.valueSet,
    required this.code,
  });
}

@Data()
@JsonCodable()
class DataRequirementDateFilter {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String path;
  final PrimitiveElement pathElement;
  final String searchParam;
  final PrimitiveElement searchParamElement;
  final String valueDateTime;
  final PrimitiveElement valueDateTimeElement;
  final Period valuePeriod;
  final FhirDuration valueDuration;
  const DataRequirementDateFilter({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.path,
    required this.pathElement,
    required this.searchParam,
    required this.searchParamElement,
    required this.valueDateTime,
    required this.valueDateTimeElement,
    required this.valuePeriod,
    required this.valueDuration,
  });
}

@Data()
@JsonCodable()
class DataRequirementSort {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String path;
  final PrimitiveElement pathElement;
  final dynamic direction;
  final PrimitiveElement directionElement;
  const DataRequirementSort({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.path,
    required this.pathElement,
    required this.direction,
    required this.directionElement,
  });
}


