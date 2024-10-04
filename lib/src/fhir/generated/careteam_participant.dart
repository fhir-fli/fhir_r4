import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CareTeamParticipant {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final List<CodeableConcept> role;
  final Reference member;
  final Reference onBehalfOf;
  final Period period;
  const CareTeamParticipant({
    this.id,
    this.extension,
    this.modifierExtension,
    this.role,
    this.member,
    this.onBehalfOf,
    this.period,
  });
}
