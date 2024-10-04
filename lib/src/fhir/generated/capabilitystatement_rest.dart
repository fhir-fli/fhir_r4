import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CapabilityStatementRest {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirCode mode;
  final PrimitiveElement Mode;
  final FhirMarkdown documentation;
  final PrimitiveElement Documentation;
  final CapabilityStatement_Security security;
  final List<CapabilityStatementResource> resource;
  final List<CapabilityStatementInteraction1> interaction;
  final List<CapabilityStatementSearchParam> searchParam;
  final List<CapabilityStatementOperation> operation;
  final List<FhirCanonical> compartment;
  const CapabilityStatementRest({
    this.id,
    this.extension,
    this.modifierExtension,
    this.mode,
    this.Mode,
    this.documentation,
    this.Documentation,
    this.security,
    this.resource,
    this.interaction,
    this.searchParam,
    this.operation,
    this.compartment,
  });
}
