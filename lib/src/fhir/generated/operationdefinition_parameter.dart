import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class OperationDefinitionParameter {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirCode name;
  final PrimitiveElement Name;
  final FhirCode use;
  final PrimitiveElement Use;
  final FhirInteger min;
  final PrimitiveElement Min;
  final String max;
  final PrimitiveElement Max;
  final String documentation;
  final PrimitiveElement Documentation;
  final FhirCode type;
  final PrimitiveElement Type;
  final List<FhirCanonical> targetProfile;
  final FhirCode searchType;
  final PrimitiveElement SearchType;
  final OperationDefinition_Binding binding;
  final List<OperationDefinitionReferencedFrom> referencedFrom;
  final List<OperationDefinitionParameter> part;
  const OperationDefinitionParameter({
    this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.Name,
    this.use,
    this.Use,
    this.min,
    this.Min,
    this.max,
    this.Max,
    this.documentation,
    this.Documentation,
    this.type,
    this.Type,
    this.targetProfile,
    this.searchType,
    this.SearchType,
    this.binding,
    this.referencedFrom,
    this.part,
  });
}
