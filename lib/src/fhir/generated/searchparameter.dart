import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class SearchParameter {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirUri url;
  final PrimitiveElement Url;
  final String version;
  final PrimitiveElement Version;
  final String name;
  final PrimitiveElement Name;
  final FhirCanonical derivedFrom;
  final FhirCode status;
  final PrimitiveElement Status;
  final FhirBoolean experimental;
  final PrimitiveElement Experimental;
  final FhirDateTime date;
  final PrimitiveElement Date;
  final String publisher;
  final PrimitiveElement Publisher;
  final List<ContactDetail> contact;
  final FhirMarkdown description;
  final PrimitiveElement Description;
  final List<UsageContext> useContext;
  final List<CodeableConcept> jurisdiction;
  final FhirMarkdown purpose;
  final PrimitiveElement Purpose;
  final FhirCode code;
  final PrimitiveElement Code;
  final List<FhirCode> base;
  final List<PrimitiveElement> Base;
  final FhirCode type;
  final PrimitiveElement Type;
  final String expression;
  final PrimitiveElement Expression;
  final String xpath;
  final PrimitiveElement Xpath;
  final FhirCode xpathUsage;
  final PrimitiveElement XpathUsage;
  final List<FhirCode> target;
  final List<PrimitiveElement> Target;
  final FhirBoolean multipleOr;
  final PrimitiveElement MultipleOr;
  final FhirBoolean multipleAnd;
  final PrimitiveElement MultipleAnd;
  final List<FhirCode> comparator;
  final List<PrimitiveElement> Comparator;
  final List<FhirCode> modifier;
  final List<PrimitiveElement> Modifier;
  final List<String> chain;
  final List<PrimitiveElement> Chain;
  final List<SearchParameterComponent> component;
  const SearchParameter({
    required this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.ImplicitRules,
    this.language,
    this.Language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.url,
    this.Url,
    this.version,
    this.Version,
    this.name,
    this.Name,
    this.derivedFrom,
    this.status,
    this.Status,
    this.experimental,
    this.Experimental,
    this.date,
    this.Date,
    this.publisher,
    this.Publisher,
    this.contact,
    this.description,
    this.Description,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    this.Purpose,
    this.code,
    this.Code,
    this.base,
    this.Base,
    this.type,
    this.Type,
    this.expression,
    this.Expression,
    this.xpath,
    this.Xpath,
    this.xpathUsage,
    this.XpathUsage,
    this.target,
    this.Target,
    this.multipleOr,
    this.MultipleOr,
    this.multipleAnd,
    this.MultipleAnd,
    this.comparator,
    this.Comparator,
    this.modifier,
    this.Modifier,
    this.chain,
    this.Chain,
    this.component,
  });
}
