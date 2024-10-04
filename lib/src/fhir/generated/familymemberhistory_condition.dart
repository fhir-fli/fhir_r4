import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class FamilyMemberHistoryCondition {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept code;
  final CodeableConcept outcome;
  final FhirBoolean contributedToDeath;
  final PrimitiveElement ContributedToDeath;
  final Age onsetAge;
  final Range onsetRange;
  final Period onsetPeriod;
  final String onsetString;
  final PrimitiveElement OnsetString;
  final List<Annotation> note;
  const FamilyMemberHistoryCondition({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.code,
    this.outcome,
    this.contributedToDeath,
    this.ContributedToDeath,
    this.onsetAge,
    this.onsetRange,
    this.onsetPeriod,
    this.onsetString,
    this.OnsetString,
    this.note,
  });
}
