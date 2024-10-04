import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class EvidenceVariable {
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
  final String title;
  final PrimitiveElement Title;
  final String shortTitle;
  final PrimitiveElement ShortTitle;
  final String subtitle;
  final PrimitiveElement Subtitle;
  final FhirCode status;
  final PrimitiveElement Status;
  final FhirDateTime date;
  final PrimitiveElement Date;
  final FhirMarkdown description;
  final PrimitiveElement Description;
  final List<Annotation> note;
  final List<UsageContext> useContext;
  final String publisher;
  final PrimitiveElement Publisher;
  final List<ContactDetail> contact;
  final List<ContactDetail> author;
  final List<ContactDetail> editor;
  final List<ContactDetail> reviewer;
  final List<ContactDetail> endorser;
  final List<RelatedArtifact> relatedArtifact;
  final FhirBoolean actual;
  final PrimitiveElement Actual;
  final FhirCode characteristicCombination;
  final PrimitiveElement CharacteristicCombination;
  final List<EvidenceVariableCharacteristic> characteristic;
  final FhirCode handling;
  final PrimitiveElement Handling;
  final List<EvidenceVariableCategory> category;
  const EvidenceVariable({
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
    this.title,
    this.Title,
    this.shortTitle,
    this.ShortTitle,
    this.subtitle,
    this.Subtitle,
    this.status,
    this.Status,
    this.date,
    this.Date,
    this.description,
    this.Description,
    this.note,
    this.useContext,
    this.publisher,
    this.Publisher,
    this.contact,
    this.author,
    this.editor,
    this.reviewer,
    this.endorser,
    this.relatedArtifact,
    this.actual,
    this.Actual,
    this.characteristicCombination,
    this.CharacteristicCombination,
    this.characteristic,
    this.handling,
    this.Handling,
    this.category,
  });
}
