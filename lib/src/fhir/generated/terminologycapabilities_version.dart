import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class TerminologyCapabilitiesVersion {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String code;
  final PrimitiveElement Code;
  final FhirBoolean isDefault;
  final PrimitiveElement IsDefault;
  final FhirBoolean compositional;
  final PrimitiveElement Compositional;
  final List<FhirCode> language;
  final List<PrimitiveElement> Language;
  final List<TerminologyCapabilitiesFilter> filter;
  final List<FhirCode> property;
  final List<PrimitiveElement> Property;
  const TerminologyCapabilitiesVersion({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.Code,
    this.isDefault,
    this.IsDefault,
    this.compositional,
    this.Compositional,
    this.language,
    this.Language,
    this.filter,
    this.property,
    this.Property,
  });
}
