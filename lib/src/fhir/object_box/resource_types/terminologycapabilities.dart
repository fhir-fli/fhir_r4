import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class TerminologyCapabilities extends Resource {
  TerminologyCapabilities({
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
    this.name,
    this.title,
    required this.status,
    this.experimental,
    required this.date,
    this.publisher,
    this.contact,
    this.description,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    this.copyright,
    required this.kind,
    this.software,
    this.implementation,
    this.lockedDate,
    this.codeSystem,
    this.expansion,
    this.codeSearch,
    this.validateCode,
    this.translation,
    this.closure,
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
  String? name;
  String? title;
  String status;
  bool? experimental;
  String date;
  String? publisher;
  ToMany<ContactDetail>? contact = ToMany<ContactDetail>();
  String? description;
  ToMany<UsageContext>? useContext = ToMany<UsageContext>();
  ToMany<CodeableConcept>? jurisdiction = ToMany<CodeableConcept>();
  String? purpose;
  String? copyright;
  String kind;
  ToOne<TerminologyCapabilitiesSoftware>? software =
      ToOne<TerminologyCapabilitiesSoftware>();
  ToOne<TerminologyCapabilitiesImplementation>? implementation =
      ToOne<TerminologyCapabilitiesImplementation>();
  bool? lockedDate;
  ToMany<TerminologyCapabilitiesCodeSystem>? codeSystem =
      ToMany<TerminologyCapabilitiesCodeSystem>();
  ToOne<TerminologyCapabilitiesExpansion>? expansion =
      ToOne<TerminologyCapabilitiesExpansion>();
  String? codeSearch;
  ToOne<TerminologyCapabilitiesValidateCode>? validateCode =
      ToOne<TerminologyCapabilitiesValidateCode>();
  ToOne<TerminologyCapabilitiesTranslation>? translation =
      ToOne<TerminologyCapabilitiesTranslation>();
  ToOne<TerminologyCapabilitiesClosure>? closure =
      ToOne<TerminologyCapabilitiesClosure>();
}

@Entity()
class TerminologyCapabilitiesSoftware {
  TerminologyCapabilitiesSoftware({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.name,
    this.version,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String name;
  String? version;
}

@Entity()
class TerminologyCapabilitiesImplementation {
  TerminologyCapabilitiesImplementation({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.description,
    this.url,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String description;
  String? url;
}

@Entity()
class TerminologyCapabilitiesCodeSystem {
  TerminologyCapabilitiesCodeSystem({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.uri,
    this.version,
    this.subsumption,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? uri;
  ToMany<TerminologyCapabilitiesVersion>? version =
      ToMany<TerminologyCapabilitiesVersion>();
  bool? subsumption;
}

@Entity()
class TerminologyCapabilitiesVersion {
  TerminologyCapabilitiesVersion({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.code,
    this.isDefault,
    this.compositional,
    this.language,
    this.filter,
    this.property,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? code;
  bool? isDefault;
  bool? compositional;
  List<String>? language;
  ToMany<TerminologyCapabilitiesFilter>? filter =
      ToMany<TerminologyCapabilitiesFilter>();
  List<String>? property;
}

@Entity()
class TerminologyCapabilitiesFilter {
  TerminologyCapabilitiesFilter({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.code,
    required this.op,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String code;
  List<String> op;
}

@Entity()
class TerminologyCapabilitiesExpansion {
  TerminologyCapabilitiesExpansion({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.hierarchical,
    this.paging,
    this.incomplete,
    this.parameter,
    this.textFilter,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  bool? hierarchical;
  bool? paging;
  bool? incomplete;
  ToMany<TerminologyCapabilitiesParameter>? parameter =
      ToMany<TerminologyCapabilitiesParameter>();
  String? textFilter;
}

@Entity()
class TerminologyCapabilitiesParameter {
  TerminologyCapabilitiesParameter({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.name,
    this.documentation,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String name;
  String? documentation;
}

@Entity()
class TerminologyCapabilitiesValidateCode {
  TerminologyCapabilitiesValidateCode({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.translations,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  bool translations;
}

@Entity()
class TerminologyCapabilitiesTranslation {
  TerminologyCapabilitiesTranslation({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.needsMap,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  bool needsMap;
}

@Entity()
class TerminologyCapabilitiesClosure {
  TerminologyCapabilitiesClosure({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.translation,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  bool? translation;
}
