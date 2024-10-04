import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ImplementationGuideResource1 {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final Reference reference;
  final bool exampleBoolean;
  final PrimitiveElement ExampleBoolean;
  final String exampleCanonical;
  final PrimitiveElement ExampleCanonical;
  final FhirUrl relativePath;
  final PrimitiveElement RelativePath;
  const ImplementationGuideResource1({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.reference,
    this.exampleBoolean,
    this.ExampleBoolean,
    this.exampleCanonical,
    this.ExampleCanonical,
    this.relativePath,
    this.RelativePath,
  });
}
