import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ValueSetInclude {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirUri system;
  final PrimitiveElement System;
  final String version;
  final PrimitiveElement Version;
  final List<ValueSetConcept> concept;
  final List<ValueSetFilter> filter;
  final List<FhirCanonical> valueSet;
  const ValueSetInclude({
    this.id,
    this.extension,
    this.modifierExtension,
    this.system,
    this.System,
    this.version,
    this.Version,
    this.concept,
    this.filter,
    this.valueSet,
  });
}
