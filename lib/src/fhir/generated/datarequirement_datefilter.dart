import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class DataRequirementDateFilter {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String path;
  final PrimitiveElement Path;
  final String searchParam;
  final PrimitiveElement SearchParam;
  final String valueDateTime;
  final PrimitiveElement ValueDateTime;
  final Period valuePeriod;
  final FhirDuration valueDuration;
  const DataRequirementDateFilter({
    this.id,
    this.extension,
    this.modifierExtension,
    this.path,
    this.Path,
    this.searchParam,
    this.SearchParam,
    this.valueDateTime,
    this.ValueDateTime,
    this.valuePeriod,
    this.valueDuration,
  });
}
