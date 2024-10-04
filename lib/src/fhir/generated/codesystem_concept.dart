import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CodeSystemConcept {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirCode code;
  final PrimitiveElement Code;
  final String display;
  final PrimitiveElement Display;
  final String definition;
  final PrimitiveElement Definition;
  final List<CodeSystemDesignation> designation;
  final List<CodeSystemProperty1> property;
  final List<CodeSystemConcept> concept;
  const CodeSystemConcept({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.Code,
    this.display,
    this.Display,
    this.definition,
    this.Definition,
    this.designation,
    this.property,
    this.concept,
  });
}
