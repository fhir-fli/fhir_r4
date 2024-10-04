import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class OperationDefinition {
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
  final FhirCode kind;
  final PrimitiveElement Kind;
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
  final FhirBoolean affectsState;
  final PrimitiveElement AffectsState;
  final FhirCode code;
  final PrimitiveElement Code;
  final FhirMarkdown comment;
  final PrimitiveElement Comment;
  final FhirCanonical base;
  final List<FhirCode> resource;
  final List<PrimitiveElement> Resource;
  final FhirBoolean system;
  final PrimitiveElement System;
  final FhirBoolean type;
  final PrimitiveElement Type;
  final FhirBoolean instance;
  final PrimitiveElement Instance;
  final FhirCanonical inputProfile;
  final FhirCanonical outputProfile;
  final List<OperationDefinitionParameter> parameter;
  final List<OperationDefinitionOverload> overload;
  const OperationDefinition({
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
    this.kind,
    this.Kind,
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
    this.affectsState,
    this.AffectsState,
    this.code,
    this.Code,
    this.comment,
    this.Comment,
    this.base,
    this.resource,
    this.Resource,
    this.system,
    this.System,
    this.type,
    this.Type,
    this.instance,
    this.Instance,
    this.inputProfile,
    this.outputProfile,
    this.parameter,
    this.overload,
  });
}
