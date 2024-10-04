import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class DataRequirement {
  final String id;
  final List<Extension> extension;
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
  const DataRequirement({
    this.id,
    this.extension,
    this.type,
    this.Type,
    this.profile,
    this.subjectCodeableConcept,
    this.subjectReference,
    this.mustSupport,
    this.MustSupport,
    this.codeFilter,
    this.dateFilter,
    this.limit,
    this.Limit,
    this.sort,
  });
}
