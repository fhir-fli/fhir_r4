import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ConsentData {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirCode meaning;
  final PrimitiveElement Meaning;
  final Reference reference;
  const ConsentData({
    this.id,
    this.extension,
    this.modifierExtension,
    this.meaning,
    this.Meaning,
    required this.reference,
  });
}
