import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class Coding {
  final String id;
  final List<Extension> extension;
  final FhirUri system;
  final PrimitiveElement System;
  final String version;
  final PrimitiveElement Version;
  final FhirCode code;
  final PrimitiveElement Code;
  final String display;
  final PrimitiveElement Display;
  final FhirBoolean userSelected;
  final PrimitiveElement UserSelected;
  const Coding({
    this.id,
    this.extension,
    this.system,
    this.System,
    this.version,
    this.Version,
    this.code,
    this.Code,
    this.display,
    this.Display,
    this.userSelected,
    this.UserSelected,
  });
}
