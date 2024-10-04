import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ParameterDefinition {
  final String id;
  final List<Extension> extension;
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
  final FhirCanonical profile;
  const ParameterDefinition({
    this.id,
    this.extension,
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
    this.profile,
  });
}
