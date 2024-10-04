import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ConceptMapGroup {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirUri source;
  final PrimitiveElement Source;
  final String sourceVersion;
  final PrimitiveElement SourceVersion;
  final FhirUri target;
  final PrimitiveElement Target;
  final String targetVersion;
  final PrimitiveElement TargetVersion;
  final List<ConceptMapElement> element;
  final ConceptMap_Unmapped unmapped;
  const ConceptMapGroup({
    this.id,
    this.extension,
    this.modifierExtension,
    this.source,
    this.Source,
    this.sourceVersion,
    this.SourceVersion,
    this.target,
    this.Target,
    this.targetVersion,
    this.TargetVersion,
    required this.element,
    this.unmapped,
  });
}
