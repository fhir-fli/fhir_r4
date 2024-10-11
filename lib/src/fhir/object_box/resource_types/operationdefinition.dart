import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class OperationDefinition extends Resource {
  OperationDefinition({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.url,
    this.version,
    required this.name,
    this.title,
    required this.status,
    required this.kind,
    this.experimental,
    this.date,
    this.publisher,
    this.contact,
    this.description,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    this.affectsState,
    required this.code,
    this.comment,
    this.base,
    this.resource,
    required this.system,
    required this.type,
    required this.instance,
    this.inputProfile,
    this.outputProfile,
    this.parameter,
    this.overload,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  String? language;
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? url;
  String? version;
  String name;
  String? title;
  String status;
  String kind;
  bool? experimental;
  String? date;
  String? publisher;
  ToMany<ContactDetail>? contact = ToMany<ContactDetail>();
  String? description;
  ToMany<UsageContext>? useContext = ToMany<UsageContext>();
  ToMany<CodeableConcept>? jurisdiction = ToMany<CodeableConcept>();
  String? purpose;
  bool? affectsState;
  String code;
  String? comment;
  String? base;
  List<String>? resource;
  bool system;
  bool type;
  bool instance;
  String? inputProfile;
  String? outputProfile;
  ToMany<OperationDefinitionParameter>? parameter =
      ToMany<OperationDefinitionParameter>();
  ToMany<OperationDefinitionOverload>? overload =
      ToMany<OperationDefinitionOverload>();
}

@Entity()
class OperationDefinitionParameter {
  OperationDefinitionParameter({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.name,
    required this.use,
    required this.min,
    required this.max,
    this.documentation,
    this.type,
    this.targetProfile,
    this.searchType,
    this.binding,
    this.referencedFrom,
    this.part_,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String name;
  String use;
  int min;
  String max;
  String? documentation;
  String? type;
  List<String>? targetProfile;
  String? searchType;
  ToOne<OperationDefinitionBinding>? binding =
      ToOne<OperationDefinitionBinding>();
  ToMany<OperationDefinitionReferencedFrom>? referencedFrom =
      ToMany<OperationDefinitionReferencedFrom>();
  ToMany<OperationDefinitionParameter>? part_ =
      ToMany<OperationDefinitionParameter>();
}

@Entity()
class OperationDefinitionBinding {
  OperationDefinitionBinding({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.strength,
    required this.valueSet,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String strength;
  String valueSet;
}

@Entity()
class OperationDefinitionReferencedFrom {
  OperationDefinitionReferencedFrom({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.source,
    this.sourceId,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String source;
  String? sourceId;
}

@Entity()
class OperationDefinitionOverload {
  OperationDefinitionOverload({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.parameterName,
    this.comment,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  List<String>? parameterName;
  String? comment;
}
