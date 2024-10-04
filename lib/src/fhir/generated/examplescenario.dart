import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ExampleScenario {
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
  final List<Identifier> identifier;
  final String version;
  final PrimitiveElement Version;
  final String name;
  final PrimitiveElement Name;
  final FhirCode status;
  final PrimitiveElement Status;
  final FhirBoolean experimental;
  final PrimitiveElement Experimental;
  final FhirDateTime date;
  final PrimitiveElement Date;
  final String publisher;
  final PrimitiveElement Publisher;
  final List<ContactDetail> contact;
  final List<UsageContext> useContext;
  final List<CodeableConcept> jurisdiction;
  final FhirMarkdown copyright;
  final PrimitiveElement Copyright;
  final FhirMarkdown purpose;
  final PrimitiveElement Purpose;
  final List<ExampleScenarioActor> actor;
  final List<ExampleScenarioInstance> instance;
  final List<ExampleScenarioProcess> process;
  final List<FhirCanonical> workflow;
  const ExampleScenario({
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
    this.identifier,
    this.version,
    this.Version,
    this.name,
    this.Name,
    this.status,
    this.Status,
    this.experimental,
    this.Experimental,
    this.date,
    this.Date,
    this.publisher,
    this.Publisher,
    this.contact,
    this.useContext,
    this.jurisdiction,
    this.copyright,
    this.Copyright,
    this.purpose,
    this.Purpose,
    this.actor,
    this.instance,
    this.process,
    this.workflow,
  });
}
