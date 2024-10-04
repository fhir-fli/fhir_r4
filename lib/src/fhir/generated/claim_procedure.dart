import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ClaimProcedure {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirPositiveInt sequence;
  final PrimitiveElement Sequence;
  final List<CodeableConcept> type;
  final FhirDateTime date;
  final PrimitiveElement Date;
  final CodeableConcept procedureCodeableConcept;
  final Reference procedureReference;
  final List<Reference> udi;
  const ClaimProcedure({
    this.id,
    this.extension,
    this.modifierExtension,
    this.sequence,
    this.Sequence,
    this.type,
    this.date,
    this.Date,
    this.procedureCodeableConcept,
    this.procedureReference,
    this.udi,
  });
}
