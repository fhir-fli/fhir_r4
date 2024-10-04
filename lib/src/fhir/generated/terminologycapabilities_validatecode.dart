import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class TerminologyCapabilitiesValidateCode {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirBoolean translations;
  final PrimitiveElement Translations;
  const TerminologyCapabilitiesValidateCode({
    this.id,
    this.extension,
    this.modifierExtension,
    this.translations,
    this.Translations,
  });
}
