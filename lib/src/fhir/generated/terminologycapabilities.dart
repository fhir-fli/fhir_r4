import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class TerminologyCapabilities {
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
  final String title;
  final PrimitiveElement Title;
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
  final FhirMarkdown copyright;
  final PrimitiveElement Copyright;
  final FhirCode kind;
  final PrimitiveElement Kind;
  final TerminologyCapabilities_Software software;
  final TerminologyCapabilities_Implementation implementation;
  final FhirBoolean lockedDate;
  final PrimitiveElement LockedDate;
  final List<TerminologyCapabilitiesCodeSystem> codeSystem;
  final TerminologyCapabilities_Expansion expansion;
  final FhirCode codeSearch;
  final PrimitiveElement CodeSearch;
  final TerminologyCapabilities_ValidateCode validateCode;
  final TerminologyCapabilities_Translation translation;
  final TerminologyCapabilities_Closure closure;
  const TerminologyCapabilities({
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
    this.title,
    this.Title,
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
    this.copyright,
    this.Copyright,
    this.kind,
    this.Kind,
    this.software,
    this.implementation,
    this.lockedDate,
    this.LockedDate,
    this.codeSystem,
    this.expansion,
    this.codeSearch,
    this.CodeSearch,
    this.validateCode,
    this.translation,
    this.closure,
  });
}
