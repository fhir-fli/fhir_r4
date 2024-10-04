import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class GraphDefinitionTarget {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirCode type;
  final PrimitiveElement Type;
  final String params;
  final PrimitiveElement Params;
  final FhirCanonical profile;
  final List<GraphDefinitionCompartment> compartment;
  final List<GraphDefinitionLink> link;
  const GraphDefinitionTarget({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.Type,
    this.params,
    this.Params,
    this.profile,
    this.compartment,
    this.link,
  });
}
