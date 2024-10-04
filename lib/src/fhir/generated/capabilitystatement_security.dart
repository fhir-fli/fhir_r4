import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CapabilityStatementSecurity {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirBoolean cors;
  final PrimitiveElement Cors;
  final List<CodeableConcept> service;
  final FhirMarkdown description;
  final PrimitiveElement Description;
  const CapabilityStatementSecurity({
    this.id,
    this.extension,
    this.modifierExtension,
    this.cors,
    this.Cors,
    this.service,
    this.description,
    this.Description,
  });
}
