// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxOperationDefinition {
  ObjectBoxOperationDefinition({
    String? id,
    ObjectBoxFhirMeta? meta,
    this.implicitRules,
    ObjectBoxElement? implicitRulesElement,
    this.language,
    ObjectBoxElement? languageElement,
    ObjectBoxNarrative? text,
    List<ObjectBoxResource>? contained,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.url,
    ObjectBoxElement? urlElement,
    this.version,
    ObjectBoxElement? versionElement,
    required this.name,
    ObjectBoxElement? nameElement,
    this.title,
    ObjectBoxElement? titleElement,
    required this.status,
    ObjectBoxElement? statusElement,
    required this.kind,
    ObjectBoxElement? kindElement,
    this.experimental,
    ObjectBoxElement? experimentalElement,
    this.date,
    ObjectBoxElement? dateElement,
    this.publisher,
    ObjectBoxElement? publisherElement,
    List<ObjectBoxContactDetail>? contact,
    this.description,
    ObjectBoxElement? descriptionElement,
    List<ObjectBoxUsageContext>? useContext,
    List<ObjectBoxCodeableConcept>? jurisdiction,
    this.purpose,
    ObjectBoxElement? purposeElement,
    this.affectsState,
    ObjectBoxElement? affectsStateElement,
    required this.code,
    ObjectBoxElement? codeElement,
    this.comment,
    ObjectBoxElement? commentElement,
    this.base,
    ObjectBoxElement? baseElement,
    this.resource,
    List<ObjectBoxElement>? resourceElement,
    required this.system,
    ObjectBoxElement? systemElement,
    required this.type,
    ObjectBoxElement? typeElement,
    required this.instance,
    ObjectBoxElement? instanceElement,
    this.inputProfile,
    ObjectBoxElement? inputProfileElement,
    this.outputProfile,
    ObjectBoxElement? outputProfileElement,
    List<ObjectBoxOperationDefinitionParameter>? parameter,
    List<ObjectBoxOperationDefinitionOverload>? overload,
  }) {
    this.id.target = id;
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.urlElement.target = urlElement;
    this.versionElement.target = versionElement;
    this.nameElement.target = nameElement;
    this.titleElement.target = titleElement;
    this.statusElement.target = statusElement;
    this.kindElement.target = kindElement;
    this.experimentalElement.target = experimentalElement;
    this.dateElement.target = dateElement;
    this.publisherElement.target = publisherElement;
    this.contact.addAll(contact ?? []);
    this.descriptionElement.target = descriptionElement;
    this.useContext.addAll(useContext ?? []);
    this.jurisdiction.addAll(jurisdiction ?? []);
    this.purposeElement.target = purposeElement;
    this.affectsStateElement.target = affectsStateElement;
    this.codeElement.target = codeElement;
    this.commentElement.target = commentElement;
    this.baseElement.target = baseElement;
    this.resourceElement.addAll(resourceElement ?? []);
    this.systemElement.target = systemElement;
    this.typeElement.target = typeElement;
    this.instanceElement.target = instanceElement;
    this.inputProfileElement.target = inputProfileElement;
    this.outputProfileElement.target = outputProfileElement;
    this.parameter.addAll(parameter ?? []);
    this.overload.addAll(overload ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToOne<ObjectBoxFhirMeta> meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement> implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement> languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative> text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource> contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? url;
  ToOne<ObjectBoxElement> urlElement = ToOne<ObjectBoxElement>();
  String? version;
  ToOne<ObjectBoxElement> versionElement = ToOne<ObjectBoxElement>();
  String name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  String? title;
  ToOne<ObjectBoxElement> titleElement = ToOne<ObjectBoxElement>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  String kind;
  ToOne<ObjectBoxElement> kindElement = ToOne<ObjectBoxElement>();
  bool? experimental;
  ToOne<ObjectBoxElement> experimentalElement = ToOne<ObjectBoxElement>();
  String? date;
  ToOne<ObjectBoxElement> dateElement = ToOne<ObjectBoxElement>();
  String? publisher;
  ToOne<ObjectBoxElement> publisherElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxContactDetail> contact = ToMany<ObjectBoxContactDetail>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxUsageContext> useContext = ToMany<ObjectBoxUsageContext>();
  ToMany<ObjectBoxCodeableConcept> jurisdiction =
      ToMany<ObjectBoxCodeableConcept>();
  String? purpose;
  ToOne<ObjectBoxElement> purposeElement = ToOne<ObjectBoxElement>();
  bool? affectsState;
  ToOne<ObjectBoxElement> affectsStateElement = ToOne<ObjectBoxElement>();
  String code;
  ToOne<ObjectBoxElement> codeElement = ToOne<ObjectBoxElement>();
  String? comment;
  ToOne<ObjectBoxElement> commentElement = ToOne<ObjectBoxElement>();
  String? base;
  ToOne<ObjectBoxElement> baseElement = ToOne<ObjectBoxElement>();
  List<String>? resource;
  ToMany<ObjectBoxElement> resourceElement = ToMany<ObjectBoxElement>();
  bool system;
  ToOne<ObjectBoxElement> systemElement = ToOne<ObjectBoxElement>();
  bool type;
  ToOne<ObjectBoxElement> typeElement = ToOne<ObjectBoxElement>();
  bool instance;
  ToOne<ObjectBoxElement> instanceElement = ToOne<ObjectBoxElement>();
  String? inputProfile;
  ToOne<ObjectBoxElement> inputProfileElement = ToOne<ObjectBoxElement>();
  String? outputProfile;
  ToOne<ObjectBoxElement> outputProfileElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxOperationDefinitionParameter> parameter =
      ToMany<ObjectBoxOperationDefinitionParameter>();
  ToMany<ObjectBoxOperationDefinitionOverload> overload =
      ToMany<ObjectBoxOperationDefinitionOverload>();
}

@Entity()
class ObjectBoxOperationDefinitionParameter {
  ObjectBoxOperationDefinitionParameter({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.name,
    ObjectBoxElement? nameElement,
    required this.use,
    ObjectBoxElement? useElement,
    required this.min,
    ObjectBoxElement? minElement,
    required this.max,
    ObjectBoxElement? maxElement,
    this.documentation,
    ObjectBoxElement? documentationElement,
    this.type,
    ObjectBoxElement? typeElement,
    this.targetProfile,
    List<ObjectBoxElement>? targetProfileElement,
    this.searchType,
    ObjectBoxElement? searchTypeElement,
    ObjectBoxOperationDefinitionBinding? binding,
    List<ObjectBoxOperationDefinitionReferencedFrom>? referencedFrom,
    List<ObjectBoxOperationDefinitionParameter>? part_,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.nameElement.target = nameElement;
    this.useElement.target = useElement;
    this.minElement.target = minElement;
    this.maxElement.target = maxElement;
    this.documentationElement.target = documentationElement;
    this.typeElement.target = typeElement;
    this.targetProfileElement.addAll(targetProfileElement ?? []);
    this.searchTypeElement.target = searchTypeElement;
    this.binding.target = binding;
    this.referencedFrom.addAll(referencedFrom ?? []);
    this.part_.addAll(part_ ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  String use;
  ToOne<ObjectBoxElement> useElement = ToOne<ObjectBoxElement>();
  int min;
  ToOne<ObjectBoxElement> minElement = ToOne<ObjectBoxElement>();
  String max;
  ToOne<ObjectBoxElement> maxElement = ToOne<ObjectBoxElement>();
  String? documentation;
  ToOne<ObjectBoxElement> documentationElement = ToOne<ObjectBoxElement>();
  String? type;
  ToOne<ObjectBoxElement> typeElement = ToOne<ObjectBoxElement>();
  List<String>? targetProfile;
  ToMany<ObjectBoxElement> targetProfileElement = ToMany<ObjectBoxElement>();
  String? searchType;
  ToOne<ObjectBoxElement> searchTypeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxOperationDefinitionBinding> binding =
      ToOne<ObjectBoxOperationDefinitionBinding>();
  ToMany<ObjectBoxOperationDefinitionReferencedFrom> referencedFrom =
      ToMany<ObjectBoxOperationDefinitionReferencedFrom>();
  ToMany<ObjectBoxOperationDefinitionParameter> part_ =
      ToMany<ObjectBoxOperationDefinitionParameter>();
}

@Entity()
class ObjectBoxOperationDefinitionBinding {
  ObjectBoxOperationDefinitionBinding({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.strength,
    ObjectBoxElement? strengthElement,
    required this.valueSet,
    ObjectBoxElement? valueSetElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.strengthElement.target = strengthElement;
    this.valueSetElement.target = valueSetElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String strength;
  ToOne<ObjectBoxElement> strengthElement = ToOne<ObjectBoxElement>();
  String valueSet;
  ToOne<ObjectBoxElement> valueSetElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxOperationDefinitionReferencedFrom {
  ObjectBoxOperationDefinitionReferencedFrom({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.source,
    ObjectBoxElement? sourceElement,
    this.sourceId,
    ObjectBoxElement? sourceIdElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.sourceElement.target = sourceElement;
    this.sourceIdElement.target = sourceIdElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String source;
  ToOne<ObjectBoxElement> sourceElement = ToOne<ObjectBoxElement>();
  String? sourceId;
  ToOne<ObjectBoxElement> sourceIdElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxOperationDefinitionOverload {
  ObjectBoxOperationDefinitionOverload({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.parameterName,
    List<ObjectBoxElement>? parameterNameElement,
    this.comment,
    ObjectBoxElement? commentElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.parameterNameElement.addAll(parameterNameElement ?? []);
    this.commentElement.target = commentElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  List<String>? parameterName;
  ToMany<ObjectBoxElement> parameterNameElement = ToMany<ObjectBoxElement>();
  String? comment;
  ToOne<ObjectBoxElement> commentElement = ToOne<ObjectBoxElement>();
}
