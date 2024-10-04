import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ElementDefinitionConstraint {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirId key;
  final PrimitiveElement Key;
  final String requirements;
  final PrimitiveElement Requirements;
  final dynamic severity;
  final PrimitiveElement Severity;
  final String human;
  final PrimitiveElement Human;
  final String expression;
  final PrimitiveElement Expression;
  final String xpath;
  final PrimitiveElement Xpath;
  final FhirCanonical source;
  const ElementDefinitionConstraint({
    this.id,
    this.extension,
    this.modifierExtension,
    this.key,
    this.Key,
    this.requirements,
    this.Requirements,
    this.severity,
    this.Severity,
    this.human,
    this.Human,
    this.expression,
    this.Expression,
    this.xpath,
    this.Xpath,
    this.source,
  });
}
