import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class OperationOutcomeIssue {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirCode severity;
  final PrimitiveElement Severity;
  final FhirCode code;
  final PrimitiveElement Code;
  final CodeableConcept details;
  final String diagnostics;
  final PrimitiveElement Diagnostics;
  final List<String> location;
  final List<PrimitiveElement> Location;
  final List<String> expression;
  final List<PrimitiveElement> Expression;
  const OperationOutcomeIssue({
    this.id,
    this.extension,
    this.modifierExtension,
    this.severity,
    this.Severity,
    this.code,
    this.Code,
    this.details,
    this.diagnostics,
    this.Diagnostics,
    this.location,
    this.Location,
    this.expression,
    this.Expression,
  });
}
