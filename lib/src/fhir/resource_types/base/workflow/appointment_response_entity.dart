import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class AppointmentResponseEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'AppointmentResponse';

  String? id;

  @ToOne()
  FhirMetaEntity? meta;

  String? implicitRules;

  @ToOne()
  PrimitiveElementEntity? implicitRulesElement;

  String? language;

  @ToOne()
  PrimitiveElementEntity? languageElement;

  @ToOne()
  NarrativeEntity? text;

  @ToMany()
  List<ResourceEntity>? contained;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToMany()
  List<IdentifierEntity>? identifier;

  @ToOne()
  ReferenceEntity? appointment;

  String? start;

  @ToOne()
  PrimitiveElementEntity? startElement;

  String? end;

  @ToOne()
  PrimitiveElementEntity? endElement;

  @ToMany()
  List<CodeableConceptEntity>? participantType;

  @ToOne()
  ReferenceEntity? actor;

  String? participantStatus;

  @ToOne()
  PrimitiveElementEntity? participantStatusElement;

  String? comment;

  @ToOne()
  PrimitiveElementEntity? commentElement;
}
