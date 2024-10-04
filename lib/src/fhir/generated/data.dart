import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class DataRequirement {
  final String id;
  final List<FhirExtension> extension;
  final FhirCode type;
  final PrimitiveElement Type;
  final List<FhirCanonical> profile;
  final CodeableConcept subjectCodeableConcept;
  final Reference subjectReference;
  final List<String> mustSupport;
  final List<PrimitiveElement> MustSupport;
  final List<DataRequirementCodeFilter> codeFilter;
  final List<DataRequirementDateFilter> dateFilter;
  final FhirPositiveInt limit;
  final PrimitiveElement Limit;
  final List<DataRequirementSort> sort;
}

@Data()
@JsonCodable()
class DataRequirementCodeFilter {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String path;
  final PrimitiveElement Path;
  final String searchParam;
  final PrimitiveElement SearchParam;
  final FhirCanonical valueSet;
  final List<Coding> code;
}

@Data()
@JsonCodable()
class DataRequirementDateFilter {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String path;
  final PrimitiveElement Path;
  final String searchParam;
  final PrimitiveElement SearchParam;
  final String valueDateTime;
  final PrimitiveElement ValueDateTime;
  final Period valuePeriod;
  final FhirDuration valueDuration;
}

@Data()
@JsonCodable()
class DataRequirementSort {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String path;
  final PrimitiveElement Path;
  final dynamic direction;
  final PrimitiveElement Direction;
}


