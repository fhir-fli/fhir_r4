import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ElementDefinitionType {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirUri code;
  final PrimitiveElement Code;
  final List<FhirCanonical> profile;
  final List<FhirCanonical> targetProfile;
  final List<dynamic> aggregation;
  final List<PrimitiveElement> Aggregation;
  final dynamic versioning;
  final PrimitiveElement Versioning;
  const ElementDefinitionType({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.Code,
    this.profile,
    this.targetProfile,
    this.aggregation,
    this.Aggregation,
    this.versioning,
    this.Versioning,
  });
}
