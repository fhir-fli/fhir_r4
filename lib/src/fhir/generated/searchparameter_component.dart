import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class SearchParameterComponent {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirCanonical definition;
  final String expression;
  final PrimitiveElement Expression;
  const SearchParameterComponent({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.definition,
    this.expression,
    this.Expression,
  });
}
