import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class StructureMapTarget {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirId context;
  final PrimitiveElement Context;
  final FhirCode contextType;
  final PrimitiveElement ContextType;
  final String element;
  final PrimitiveElement Element;
  final FhirId variable;
  final PrimitiveElement Variable;
  final List<FhirCode> listMode;
  final List<PrimitiveElement> ListMode;
  final FhirId listRuleId;
  final PrimitiveElement ListRuleId;
  final FhirCode transform;
  final PrimitiveElement Transform;
  final List<StructureMapParameter> parameter;
  const StructureMapTarget({
    this.id,
    this.extension,
    this.modifierExtension,
    this.context,
    this.Context,
    this.contextType,
    this.ContextType,
    this.element,
    this.Element,
    this.variable,
    this.Variable,
    this.listMode,
    this.ListMode,
    this.listRuleId,
    this.ListRuleId,
    this.transform,
    this.Transform,
    this.parameter,
  });
}
