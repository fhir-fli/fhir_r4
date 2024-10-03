import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class FhirEndpointEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'Endpoint';

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
  EndpointStatusEntity? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  @ToOne()
  CodingEntity? connectionType;

  String? name;

  @ToOne()
  PrimitiveElementEntity? nameElement;

  @ToOne()
  ReferenceEntity? managingOrganization;

  @ToMany()
  List<ContactPointEntity>? contact;

  @ToOne()
  PeriodEntity? period;

  @ToMany()
  List<CodeableConceptEntity>? payloadType;

  List<String>? payloadMimeType;

  @ToMany()
  List<PrimitiveElementEntity>? payloadMimeTypeElement;

  String? address;

  @ToOne()
  PrimitiveElementEntity? addressElement;

  List<String>? header;

  @ToMany()
  List<PrimitiveElementEntity>? headerElement;
}
