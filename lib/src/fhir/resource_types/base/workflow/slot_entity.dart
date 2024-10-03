import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class SlotEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'Slot';

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

  @ToMany()
  List<CodeableConceptEntity>? serviceCategory;

  @ToMany()
  List<CodeableConceptEntity>? serviceType;

  @ToMany()
  List<CodeableConceptEntity>? specialty;

  @ToOne()
  CodeableConceptEntity? appointmentType;

  @ToOne()
  ReferenceEntity? schedule;

  String? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  String? start;

  @ToOne()
  PrimitiveElementEntity? startElement;

  String? end;

  @ToOne()
  PrimitiveElementEntity? endElement;

  bool? overbooked;

  @ToOne()
  PrimitiveElementEntity? overbookedElement;

  String? comment;

  @ToOne()
  PrimitiveElementEntity? commentElement;
}
