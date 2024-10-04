import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MessageDefinitionFocus {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirCode code;
  final PrimitiveElement Code;
  final FhirCanonical profile;
  final FhirUnsignedInt min;
  final PrimitiveElement Min;
  final String max;
  final PrimitiveElement Max;
  const MessageDefinitionFocus({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.Code,
    this.profile,
    this.min,
    this.Min,
    this.max,
    this.Max,
  });
}
