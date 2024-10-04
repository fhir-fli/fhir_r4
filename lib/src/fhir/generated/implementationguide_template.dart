import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ImplementationGuideTemplate {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirCode code;
  final PrimitiveElement Code;
  final String source;
  final PrimitiveElement Source;
  final String scope;
  final PrimitiveElement Scope;
  const ImplementationGuideTemplate({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.Code,
    this.source,
    this.Source,
    this.scope,
    this.Scope,
  });
}
