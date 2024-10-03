import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class DeviceMetricEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'DeviceMetric';

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
  CodeableConceptEntity? type;

  @ToOne()
  CodeableConceptEntity? unit;

  @ToOne()
  ReferenceEntity? source;

  @ToOne()
  ReferenceEntity? parent;

  @ToOne()
  DeviceMetricOperationalStatusEntity? operationalStatus;

  @ToOne()
  PrimitiveElementEntity? operationalStatusElement;

  @ToOne()
  DeviceMetricColorEntity? color;

  @ToOne()
  PrimitiveElementEntity? colorElement;

  @ToOne()
  DeviceMetricCategoryEntity? category;

  @ToOne()
  PrimitiveElementEntity? categoryElement;

  @ToOne()
  TimingEntity? measurementPeriod;

  @ToMany()
  List<DeviceMetricCalibrationEntity>? calibration;
}

class DeviceMetricCalibrationEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  DeviceMetricCalibrationTypeEntity? type;

  @ToOne()
  PrimitiveElementEntity? typeElement;

  @ToOne()
  DeviceMetricCalibrationStateEntity? state;

  @ToOne()
  PrimitiveElementEntity? stateElement;

  String? time;

  @ToOne()
  PrimitiveElementEntity? timeElement;
}
