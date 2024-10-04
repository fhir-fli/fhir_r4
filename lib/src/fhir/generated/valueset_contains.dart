import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ValueSetContains {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirUri system;
  final PrimitiveElement System;
  final FhirBoolean abstract;
  final PrimitiveElement Abstract;
  final FhirBoolean inactive;
  final PrimitiveElement Inactive;
  final String version;
  final PrimitiveElement Version;
  final FhirCode code;
  final PrimitiveElement Code;
  final String display;
  final PrimitiveElement Display;
  final List<ValueSetDesignation> designation;
  final List<ValueSetContains> contains;
  const ValueSetContains({
    this.id,
    this.extension,
    this.modifierExtension,
    this.system,
    this.System,
    this.abstract,
    this.Abstract,
    this.inactive,
    this.Inactive,
    this.version,
    this.Version,
    this.code,
    this.Code,
    this.display,
    this.Display,
    this.designation,
    this.contains,
  });
}
