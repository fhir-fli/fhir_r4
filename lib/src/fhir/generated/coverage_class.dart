import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CoverageClass {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept type;
  final String value;
  final PrimitiveElement Value;
  final String name;
  final PrimitiveElement Name;
  const CoverageClass({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.type,
    this.value,
    this.Value,
    this.name,
    this.Name,
  });
}
