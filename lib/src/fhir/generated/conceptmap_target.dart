import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ConceptMapTarget {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirCode code;
  final PrimitiveElement Code;
  final String display;
  final PrimitiveElement Display;
  final FhirCode equivalence;
  final PrimitiveElement Equivalence;
  final String comment;
  final PrimitiveElement Comment;
  final List<ConceptMapDependsOn> dependsOn;
  final List<ConceptMapDependsOn> product;
  const ConceptMapTarget({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.Code,
    this.display,
    this.Display,
    this.equivalence,
    this.Equivalence,
    this.comment,
    this.Comment,
    this.dependsOn,
    this.product,
  });
}
