import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class AppointmentParticipant {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final List<CodeableConcept> type;
  final Reference actor;
  final FhirCode required;
  final PrimitiveElement Required;
  final FhirCode status;
  final PrimitiveElement Status;
  final Period period;
  const AppointmentParticipant({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.actor,
    this.required,
    this.Required,
    this.status,
    this.Status,
    this.period,
  });
}
