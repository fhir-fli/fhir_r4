import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CapabilityStatementResource {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirCode type;
  final PrimitiveElement Type;
  final FhirCanonical profile;
  final List<FhirCanonical> supportedProfile;
  final FhirMarkdown documentation;
  final PrimitiveElement Documentation;
  final List<CapabilityStatementInteraction> interaction;
  final FhirCode versioning;
  final PrimitiveElement Versioning;
  final FhirBoolean readHistory;
  final PrimitiveElement ReadHistory;
  final FhirBoolean updateCreate;
  final PrimitiveElement UpdateCreate;
  final FhirBoolean conditionalCreate;
  final PrimitiveElement ConditionalCreate;
  final FhirCode conditionalRead;
  final PrimitiveElement ConditionalRead;
  final FhirBoolean conditionalUpdate;
  final PrimitiveElement ConditionalUpdate;
  final FhirCode conditionalDelete;
  final PrimitiveElement ConditionalDelete;
  final List<FhirCode> referencePolicy;
  final List<PrimitiveElement> ReferencePolicy;
  final List<String> searchInclude;
  final List<PrimitiveElement> SearchInclude;
  final List<String> searchRevInclude;
  final List<PrimitiveElement> SearchRevInclude;
  final List<CapabilityStatementSearchParam> searchParam;
  final List<CapabilityStatementOperation> operation;
  const CapabilityStatementResource({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.Type,
    this.profile,
    this.supportedProfile,
    this.documentation,
    this.Documentation,
    this.interaction,
    this.versioning,
    this.Versioning,
    this.readHistory,
    this.ReadHistory,
    this.updateCreate,
    this.UpdateCreate,
    this.conditionalCreate,
    this.ConditionalCreate,
    this.conditionalRead,
    this.ConditionalRead,
    this.conditionalUpdate,
    this.ConditionalUpdate,
    this.conditionalDelete,
    this.ConditionalDelete,
    this.referencePolicy,
    this.ReferencePolicy,
    this.searchInclude,
    this.SearchInclude,
    this.searchRevInclude,
    this.SearchRevInclude,
    this.searchParam,
    this.operation,
  });
}
