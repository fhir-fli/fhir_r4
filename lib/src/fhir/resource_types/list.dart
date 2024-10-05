import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class FhirList extends DomainResource {
  final List<Identifier>? identifier;
  final FhirCode? status;
  final Element? statusElement;
  final FhirCode? mode;
  final Element? modeElement;
  final FhirString? title;
  final Element? titleElement;
  final CodeableConcept? code;
  final Reference? subject;
  final Reference? encounter;
  final FhirDateTime? date;
  final Element? dateElement;
  final Reference? source;
  final CodeableConcept? orderedBy;
  final List<Annotation>? note;
  final List<ListEntry>? entry;
  final CodeableConcept? emptyReason;

  FhirList({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.status,
    this.statusElement,
    this.mode,
    this.modeElement,
    this.title,
    this.titleElement,
    this.code,
    this.subject,
    this.encounter,
    this.date,
    this.dateElement,
    this.source,
    this.orderedBy,
    this.note,
    this.entry,
    this.emptyReason,
  }): super(resourceType: R4ResourceType.FhirList);

@override
FhirList clone() => this;

}


@Data()
@JsonCodable()
class ListEntry {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept? flag;
  final FhirBoolean? deleted;
  final Element? deletedElement;
  final FhirDateTime? date;
  final Element? dateElement;
  final Reference item;

  ListEntry({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.flag,
    this.deleted,
    this.deletedElement,
    this.date,
    this.dateElement,
    required this.item,
  });

}



