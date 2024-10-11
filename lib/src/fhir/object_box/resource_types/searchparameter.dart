import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class SearchParameter extends Resource {
  SearchParameter({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    required this.url,
    this.version,
    required this.name,
    this.derivedFrom,
    required this.status,
    this.experimental,
    this.date,
    this.publisher,
    this.contact,
    required this.description,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    required this.code,
    required this.base,
    required this.type,
    this.expression,
    this.xpath,
    this.xpathUsage,
    this.target,
    this.multipleOr,
    this.multipleAnd,
    this.comparator,
    this.modifier,
    this.chain,
    this.component,
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
  String url;
  String? version;
  String name;
  String? derivedFrom;
  String status;
  bool? experimental;
  String? date;
  String? publisher;
  ToMany<ContactDetail>? contact = ToMany<ContactDetail>();
  String description;
  ToMany<UsageContext>? useContext = ToMany<UsageContext>();
  ToMany<CodeableConcept>? jurisdiction = ToMany<CodeableConcept>();
  String? purpose;
  String code;
  List<String> base;
  String type;
  String? expression;
  String? xpath;
  String? xpathUsage;
  List<String>? target;
  bool? multipleOr;
  bool? multipleAnd;
  List<String>? comparator;
  List<String>? modifier;
  List<String>? chain;
  ToMany<SearchParameterComponent>? component =
      ToMany<SearchParameterComponent>();
}

@Entity()
class SearchParameterComponent {
  SearchParameterComponent({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.definition,
    required this.expression,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String definition;
  String expression;
}
