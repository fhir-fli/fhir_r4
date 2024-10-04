import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class NamingSystemUniqueId {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirCode type;
  final PrimitiveElement Type;
  final String value;
  final PrimitiveElement Value;
  final FhirBoolean preferred;
  final PrimitiveElement Preferred;
  final String comment;
  final PrimitiveElement Comment;
  final Period period;
  const NamingSystemUniqueId({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.Type,
    this.value,
    this.Value,
    this.preferred,
    this.Preferred,
    this.comment,
    this.Comment,
    this.period,
  });
}
