import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class TerminologyCapabilitiesFilter {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirCode code;
  final PrimitiveElement Code;
  final List<FhirCode> op;
  final List<PrimitiveElement> Op;
  const TerminologyCapabilitiesFilter({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.Code,
    this.op,
    this.Op,
  });
}
