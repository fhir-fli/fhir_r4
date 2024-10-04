import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class PlanDefinitionRelatedAction {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirId actionId;
  final PrimitiveElement ActionId;
  final FhirCode relationship;
  final PrimitiveElement Relationship;
  final FhirDuration offsetDuration;
  final Range offsetRange;
  const PlanDefinitionRelatedAction({
    this.id,
    this.extension,
    this.modifierExtension,
    this.actionId,
    this.ActionId,
    this.relationship,
    this.Relationship,
    this.offsetDuration,
    this.offsetRange,
  });
}
