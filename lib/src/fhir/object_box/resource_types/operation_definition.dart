// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxOperationDefinition {
  ObjectBoxOperationDefinition({
    this.id,
    this.meta,
    this.implicitRules,
    this.implicitRulesElement,
    this.language,
    this.languageElement,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.url,
    this.urlElement,
    this.version,
    this.versionElement,
    required this.name,
    this.nameElement,
    this.title,
    this.titleElement,
    required this.status,
    this.statusElement,
    required this.kind,
    this.kindElement,
    this.experimental,
    this.experimentalElement,
    this.date,
    this.dateElement,
    this.publisher,
    this.publisherElement,
    this.contact,
    this.description,
    this.descriptionElement,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    this.purposeElement,
    this.affectsState,
    this.affectsStateElement,
    required this.code,
    this.codeElement,
    this.comment,
    this.commentElement,
    this.base,
    this.baseElement,
    this.resource,
    this.resourceElement,
    required this.system,
    this.systemElement,
    required this.type,
    this.typeElement,
    required this.instance,
    this.instanceElement,
    this.inputProfile,
    this.inputProfileElement,
    this.outputProfile,
    this.outputProfileElement,
    this.parameter,
    this.overload,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<ObjectBoxFhirMeta>? meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement>? implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement>? languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative>? text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource>? contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? url;
  ToOne<ObjectBoxElement>? urlElement = ToOne<ObjectBoxElement>();
  String? version;
  ToOne<ObjectBoxElement>? versionElement = ToOne<ObjectBoxElement>();
  String name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
  String? title;
  ToOne<ObjectBoxElement>? titleElement = ToOne<ObjectBoxElement>();
  String status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  String kind;
  ToOne<ObjectBoxElement>? kindElement = ToOne<ObjectBoxElement>();
  bool? experimental;
  ToOne<ObjectBoxElement>? experimentalElement = ToOne<ObjectBoxElement>();
  String? date;
  ToOne<ObjectBoxElement>? dateElement = ToOne<ObjectBoxElement>();
  String? publisher;
  ToOne<ObjectBoxElement>? publisherElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxContactDetail>? contact = ToMany<ObjectBoxContactDetail>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxUsageContext>? useContext = ToMany<ObjectBoxUsageContext>();
  ToMany<ObjectBoxCodeableConcept>? jurisdiction =
      ToMany<ObjectBoxCodeableConcept>();
  String? purpose;
  ToOne<ObjectBoxElement>? purposeElement = ToOne<ObjectBoxElement>();
  bool? affectsState;
  ToOne<ObjectBoxElement>? affectsStateElement = ToOne<ObjectBoxElement>();
  String code;
  ToOne<ObjectBoxElement>? codeElement = ToOne<ObjectBoxElement>();
  String? comment;
  ToOne<ObjectBoxElement>? commentElement = ToOne<ObjectBoxElement>();
  String? base;
  ToOne<ObjectBoxElement>? baseElement = ToOne<ObjectBoxElement>();
  List<String>? resource;
  ToMany<ObjectBoxElement>? resourceElement = ToMany<ObjectBoxElement>();
  bool system;
  ToOne<ObjectBoxElement>? systemElement = ToOne<ObjectBoxElement>();
  bool type;
  ToOne<ObjectBoxElement>? typeElement = ToOne<ObjectBoxElement>();
  bool instance;
  ToOne<ObjectBoxElement>? instanceElement = ToOne<ObjectBoxElement>();
  String? inputProfile;
  ToOne<ObjectBoxElement>? inputProfileElement = ToOne<ObjectBoxElement>();
  String? outputProfile;
  ToOne<ObjectBoxElement>? outputProfileElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxOperationDefinitionParameter>? parameter =
      ToMany<ObjectBoxOperationDefinitionParameter>();
  ToMany<ObjectBoxOperationDefinitionOverload>? overload =
      ToMany<ObjectBoxOperationDefinitionOverload>();
}

@Entity()
class ObjectBoxOperationDefinitionParameter {
  ObjectBoxOperationDefinitionParameter({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.name,
    this.nameElement,
    required this.use,
    this.useElement,
    required this.min,
    this.minElement,
    required this.max,
    this.maxElement,
    this.documentation,
    this.documentationElement,
    this.type,
    this.typeElement,
    this.targetProfile,
    this.targetProfileElement,
    this.searchType,
    this.searchTypeElement,
    this.binding,
    this.referencedFrom,
    this.part_,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
  String use;
  ToOne<ObjectBoxElement>? useElement = ToOne<ObjectBoxElement>();
  int min;
  ToOne<ObjectBoxElement>? minElement = ToOne<ObjectBoxElement>();
  String max;
  ToOne<ObjectBoxElement>? maxElement = ToOne<ObjectBoxElement>();
  String? documentation;
  ToOne<ObjectBoxElement>? documentationElement = ToOne<ObjectBoxElement>();
  String? type;
  ToOne<ObjectBoxElement>? typeElement = ToOne<ObjectBoxElement>();
  List<String>? targetProfile;
  ToMany<ObjectBoxElement>? targetProfileElement = ToMany<ObjectBoxElement>();
  String? searchType;
  ToOne<ObjectBoxElement>? searchTypeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxOperationDefinitionBinding>? binding =
      ToOne<ObjectBoxOperationDefinitionBinding>();
  ToMany<ObjectBoxOperationDefinitionReferencedFrom>? referencedFrom =
      ToMany<ObjectBoxOperationDefinitionReferencedFrom>();
  ToMany<ObjectBoxOperationDefinitionParameter>? part_ =
      ToMany<ObjectBoxOperationDefinitionParameter>();
}

@Entity()
class ObjectBoxOperationDefinitionBinding {
  ObjectBoxOperationDefinitionBinding({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.strength,
    this.strengthElement,
    required this.valueSet,
    this.valueSetElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String strength;
  ToOne<ObjectBoxElement>? strengthElement = ToOne<ObjectBoxElement>();
  String valueSet;
  ToOne<ObjectBoxElement>? valueSetElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxOperationDefinitionReferencedFrom {
  ObjectBoxOperationDefinitionReferencedFrom({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.source,
    this.sourceElement,
    this.sourceId,
    this.sourceIdElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String source;
  ToOne<ObjectBoxElement>? sourceElement = ToOne<ObjectBoxElement>();
  String? sourceId;
  ToOne<ObjectBoxElement>? sourceIdElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxOperationDefinitionOverload {
  ObjectBoxOperationDefinitionOverload({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.parameterName,
    this.parameterNameElement,
    this.comment,
    this.commentElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  List<String>? parameterName;
  ToMany<ObjectBoxElement>? parameterNameElement = ToMany<ObjectBoxElement>();
  String? comment;
  ToOne<ObjectBoxElement>? commentElement = ToOne<ObjectBoxElement>();
}
