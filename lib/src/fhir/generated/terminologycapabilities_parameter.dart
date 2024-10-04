import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class TerminologyCapabilitiesParameter {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirCode name;
  final PrimitiveElement Name;
  final String documentation;
  final PrimitiveElement Documentation;
  const TerminologyCapabilitiesParameter({
    this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.Name,
    this.documentation,
    this.Documentation,
  });
}
