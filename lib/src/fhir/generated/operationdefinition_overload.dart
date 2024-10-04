import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class OperationDefinitionOverload {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final List<String> parameterName;
  final List<PrimitiveElement> ParameterName;
  final String comment;
  final PrimitiveElement Comment;
  const OperationDefinitionOverload({
    this.id,
    this.extension,
    this.modifierExtension,
    this.parameterName,
    this.ParameterName,
    this.comment,
    this.Comment,
  });
}
