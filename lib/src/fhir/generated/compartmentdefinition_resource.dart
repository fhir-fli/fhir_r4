import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CompartmentDefinitionResource {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirCode code;
  final PrimitiveElement Code;
  final List<String> param;
  final List<PrimitiveElement> Param;
  final String documentation;
  final PrimitiveElement Documentation;
  const CompartmentDefinitionResource({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.Code,
    this.param,
    this.Param,
    this.documentation,
    this.Documentation,
  });
}
