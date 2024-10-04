import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class QuestionnaireResponse {
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
  final Identifier identifier;
  final List<Reference> basedOn;
  final List<Reference> partOf;
  final FhirCanonical questionnaire;
  final FhirCode status;
  final PrimitiveElement Status;
  final Reference subject;
  final Reference encounter;
  final FhirDateTime authored;
  final PrimitiveElement Authored;
  final Reference author;
  final Reference source;
  final List<QuestionnaireResponseItem> item;
  const QuestionnaireResponse({
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
    this.identifier,
    this.basedOn,
    this.partOf,
    this.questionnaire,
    this.status,
    this.Status,
    this.subject,
    this.encounter,
    this.authored,
    this.Authored,
    this.author,
    this.source,
    this.item,
  });
}
