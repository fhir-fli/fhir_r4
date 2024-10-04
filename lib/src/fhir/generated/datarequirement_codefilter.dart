import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class DataRequirementCodeFilter {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String path;
  final PrimitiveElement Path;
  final String searchParam;
  final PrimitiveElement SearchParam;
  final FhirCanonical valueSet;
  final List<Coding> code;
  const DataRequirementCodeFilter({
    this.id,
    this.extension,
    this.modifierExtension,
    this.path,
    this.Path,
    this.searchParam,
    this.SearchParam,
    this.valueSet,
    this.code,
  });
}
