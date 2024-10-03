import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class TestReportEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'TestReport';

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

  @ToOne()
  IdentifierEntity? identifier;

  String? name;

  @ToOne()
  PrimitiveElementEntity? nameElement;

  String? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  @ToOne()
  ReferenceEntity? testScript;

  String? result;

  @ToOne()
  PrimitiveElementEntity? resultElement;

  double? score;

  @ToOne()
  PrimitiveElementEntity? scoreElement;

  String? tester;

  @ToOne()
  PrimitiveElementEntity? testerElement;

  String? issued;

  @ToOne()
  PrimitiveElementEntity? issuedElement;

  @ToMany()
  List<TestReportParticipantEntity>? participant;

  @ToOne()
  TestReportSetupEntity? setup;

  @ToMany()
  List<TestReportTestEntity>? test;

  @ToOne()
  TestReportTeardownEntity? teardown;
}

class TestReportParticipantEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? type;

  @ToOne()
  PrimitiveElementEntity? typeElement;

  String? uri;

  @ToOne()
  PrimitiveElementEntity? uriElement;

  String? display;

  @ToOne()
  PrimitiveElementEntity? displayElement;
}

class TestReportSetupEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToMany()
  List<TestReportActionEntity>? action;
}

class TestReportActionEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  TestReportOperationEntity? operation;

  @ToOne()
  TestReportAssertEntity? assert_;
}

class TestReportOperationEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? result;

  @ToOne()
  PrimitiveElementEntity? resultElement;

  String? message;

  @ToOne()
  PrimitiveElementEntity? messageElement;

  String? detail;

  @ToOne()
  PrimitiveElementEntity? detailElement;
}

class TestReportAssertEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? result;

  @ToOne()
  PrimitiveElementEntity? resultElement;

  String? message;

  @ToOne()
  PrimitiveElementEntity? messageElement;

  String? detail;

  @ToOne()
  PrimitiveElementEntity? detailElement;
}

class TestReportTestEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? name;

  @ToOne()
  PrimitiveElementEntity? nameElement;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  @ToMany()
  List<TestReportAction1Entity>? action;
}

class TestReportAction1Entity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  TestReportOperationEntity? operation;

  @ToOne()
  TestReportAssertEntity? assert_;
}

class TestReportTeardownEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToMany()
  List<TestReportAction2Entity>? action;
}

class TestReportAction2Entity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  TestReportOperationEntity? operation;
}
