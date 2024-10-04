import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ImplementationGuideResource {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final Reference reference;
  final List<FhirCode> fhirVersion;
  final List<PrimitiveElement> FhirVersion;
  final String name;
  final PrimitiveElement Name;
  final String description;
  final PrimitiveElement Description;
  final bool exampleBoolean;
  final PrimitiveElement ExampleBoolean;
  final String exampleCanonical;
  final PrimitiveElement ExampleCanonical;
  final FhirId groupingId;
  final PrimitiveElement GroupingId;
  const ImplementationGuideResource({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.reference,
    this.fhirVersion,
    this.FhirVersion,
    this.name,
    this.Name,
    this.description,
    this.Description,
    this.exampleBoolean,
    this.ExampleBoolean,
    this.exampleCanonical,
    this.ExampleCanonical,
    this.groupingId,
    this.GroupingId,
  });
}
