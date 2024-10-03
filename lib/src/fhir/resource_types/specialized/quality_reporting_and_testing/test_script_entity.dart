import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class TestScriptEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'TestScript';

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

  String? url;

  @ToOne()
  PrimitiveElementEntity? urlElement;

  @ToOne()
  IdentifierEntity? identifier;

  String? version;

  @ToOne()
  PrimitiveElementEntity? versionElement;

  String? name;

  @ToOne()
  PrimitiveElementEntity? nameElement;

  String? title;

  @ToOne()
  PrimitiveElementEntity? titleElement;

  String? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  bool? experimental;

  @ToOne()
  PrimitiveElementEntity? experimentalElement;

  String? date;

  @ToOne()
  PrimitiveElementEntity? dateElement;

  String? publisher;

  @ToOne()
  PrimitiveElementEntity? publisherElement;

  @ToMany()
  List<ContactDetailEntity>? contact;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  @ToMany()
  List<UsageContextEntity>? useContext;

  @ToMany()
  List<CodeableConceptEntity>? jurisdiction;

  String? purpose;

  @ToOne()
  PrimitiveElementEntity? purposeElement;

  String? copyright;

  @ToOne()
  PrimitiveElementEntity? copyrightElement;

  @ToMany()
  List<TestScriptOriginEntity>? origin;

  @ToMany()
  List<TestScriptDestinationEntity>? destination;

  @ToOne()
  TestScriptMetadataEntity? metadata;

  @ToMany()
  List<TestScriptFixtureEntity>? fixture;

  @ToMany()
  List<ReferenceEntity>? profile;

  @ToMany()
  List<TestScriptVariableEntity>? variable;

  @ToOne()
  TestScriptSetupEntity? setup;

  @ToMany()
  List<TestScriptTestEntity>? test;

  @ToOne()
  TestScriptTeardownEntity? teardown;
}

class TestScriptOriginEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  int? index;

  @ToOne()
  PrimitiveElementEntity? indexElement;

  @ToOne()
  CodingEntity? profile;
}

class TestScriptDestinationEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  int? index;

  @ToOne()
  PrimitiveElementEntity? indexElement;

  @ToOne()
  CodingEntity? profile;
}

class TestScriptMetadataEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToMany()
  List<TestScriptLinkEntity>? link;

  @ToMany()
  List<TestScriptCapabilityEntity>? capability;
}

class TestScriptLinkEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? url;

  @ToOne()
  PrimitiveElementEntity? urlElement;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;
}

class TestScriptCapabilityEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  bool? required_;

  @ToOne()
  PrimitiveElementEntity? requiredElement;

  bool? validated;

  @ToOne()
  PrimitiveElementEntity? validatedElement;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  List<FhirInteger>? origin;

  @ToMany()
  List<PrimitiveElementEntity>? originElement;

  int? destination;

  @ToOne()
  PrimitiveElementEntity? destinationElement;

  List<FhirUri>? link;

  @ToMany()
  List<PrimitiveElementEntity>? linkElement;

  String? capabilities;
}

class TestScriptFixtureEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  bool? autocreate;

  @ToOne()
  PrimitiveElementEntity? autocreateElement;

  bool? autodelete;

  @ToOne()
  PrimitiveElementEntity? autodeleteElement;

  @ToOne()
  ReferenceEntity? resource;
}

class TestScriptVariableEntity {
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

  String? defaultValue;

  @ToOne()
  PrimitiveElementEntity? defaultValueElement;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  String? expression;

  @ToOne()
  PrimitiveElementEntity? expressionElement;

  String? headerField;

  @ToOne()
  PrimitiveElementEntity? headerFieldElement;

  String? hint;

  @ToOne()
  PrimitiveElementEntity? hintElement;

  String? path;

  @ToOne()
  PrimitiveElementEntity? pathElement;

  String? sourceId;

  @ToOne()
  PrimitiveElementEntity? sourceIdElement;
}

class TestScriptSetupEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToMany()
  List<TestScriptActionEntity>? action;
}

class TestScriptActionEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  TestScriptOperationEntity? operation;

  @ToOne()
  TestScriptAssertEntity? assert_;
}

class TestScriptOperationEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodingEntity? type;

  String? resource;

  @ToOne()
  PrimitiveElementEntity? resourceElement;

  String? label;

  @ToOne()
  PrimitiveElementEntity? labelElement;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  String? accept;

  @ToOne()
  PrimitiveElementEntity? acceptElement;

  String? contentType;

  @ToOne()
  PrimitiveElementEntity? contentTypeElement;

  int? destination;

  @ToOne()
  PrimitiveElementEntity? destinationElement;

  bool? encodeRequestUrl;

  @ToOne()
  PrimitiveElementEntity? encodeRequestUrlElement;

  String? method;

  @ToOne()
  PrimitiveElementEntity? methodElement;

  int? origin;

  @ToOne()
  PrimitiveElementEntity? originElement;

  String? params;

  @ToOne()
  PrimitiveElementEntity? paramsElement;

  @ToMany()
  List<TestScriptRequestHeaderEntity>? requestHeader;

  String? requestId;

  @ToOne()
  PrimitiveElementEntity? requestIdElement;

  String? responseId;

  @ToOne()
  PrimitiveElementEntity? responseIdElement;

  String? sourceId;

  @ToOne()
  PrimitiveElementEntity? sourceIdElement;

  String? targetId;

  @ToOne()
  PrimitiveElementEntity? targetIdElement;

  String? url;

  @ToOne()
  PrimitiveElementEntity? urlElement;
}

class TestScriptRequestHeaderEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? field;

  @ToOne()
  PrimitiveElementEntity? fieldElement;

  String? value;

  @ToOne()
  PrimitiveElementEntity? valueElement;
}

class TestScriptAssertEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? label;

  @ToOne()
  PrimitiveElementEntity? labelElement;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  String? direction;

  @ToOne()
  PrimitiveElementEntity? directionElement;

  String? compareToSourceId;

  @ToOne()
  PrimitiveElementEntity? compareToSourceIdElement;

  String? compareToSourceExpression;

  @ToOne()
  PrimitiveElementEntity? compareToSourceExpressionElement;

  String? compareToSourcePath;

  @ToOne()
  PrimitiveElementEntity? compareToSourcePathElement;

  String? contentType;

  @ToOne()
  PrimitiveElementEntity? contentTypeElement;

  String? expression;

  @ToOne()
  PrimitiveElementEntity? expressionElement;

  String? headerField;

  @ToOne()
  PrimitiveElementEntity? headerFieldElement;

  String? minimumId;

  @ToOne()
  PrimitiveElementEntity? minimumIdElement;

  bool? navigationLinks;

  @ToOne()
  PrimitiveElementEntity? navigationLinksElement;

  String? operator_;

  @ToOne()
  PrimitiveElementEntity? operatorElement;

  String? path;

  @ToOne()
  PrimitiveElementEntity? pathElement;

  String? requestMethod;

  @ToOne()
  PrimitiveElementEntity? requestMethodElement;

  String? requestURL;

  @ToOne()
  PrimitiveElementEntity? requestURLElement;

  String? resource;

  @ToOne()
  PrimitiveElementEntity? resourceElement;

  String? response;

  @ToOne()
  PrimitiveElementEntity? responseElement;

  String? responseCode;

  @ToOne()
  PrimitiveElementEntity? responseCodeElement;

  String? sourceId;

  @ToOne()
  PrimitiveElementEntity? sourceIdElement;

  String? validateProfileId;

  @ToOne()
  PrimitiveElementEntity? validateProfileIdElement;

  String? value;

  @ToOne()
  PrimitiveElementEntity? valueElement;

  bool? warningOnly;

  @ToOne()
  PrimitiveElementEntity? warningOnlyElement;
}

class TestScriptTestEntity {
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
  List<TestScriptAction1Entity>? action;
}

class TestScriptAction1Entity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  TestScriptOperationEntity? operation;

  @ToOne()
  TestScriptAssertEntity? assert_;
}

class TestScriptTeardownEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToMany()
  List<TestScriptAction2Entity>? action;
}

class TestScriptAction2Entity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  TestScriptOperationEntity? operation;
}
