import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class ValueSet extends DomainResource {
  final FhirUri? url;
  final Element? urlElement;
  final List<Identifier>? identifier;
  final FhirString? version;
  final Element? versionElement;
  final FhirString? name;
  final Element? nameElement;
  final FhirString? title;
  final Element? titleElement;
  final FhirCode? status;
  final Element? statusElement;
  final FhirBoolean? experimental;
  final Element? experimentalElement;
  final FhirDateTime? date;
  final Element? dateElement;
  final FhirString? publisher;
  final Element? publisherElement;
  final List<ContactDetail>? contact;
  final FhirMarkdown? description;
  final Element? descriptionElement;
  final List<UsageContext>? useContext;
  final List<CodeableConcept>? jurisdiction;
  final FhirBoolean? immutable;
  final Element? immutableElement;
  final FhirMarkdown? purpose;
  final Element? purposeElement;
  final FhirMarkdown? copyright;
  final Element? copyrightElement;
  final ValueSetCompose? compose;
  final ValueSetExpansion? expansion;

  ValueSet({
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
    this.url,
    this.urlElement,
    this.identifier,
    this.version,
    this.versionElement,
    this.name,
    this.nameElement,
    this.title,
    this.titleElement,
    this.status,
    this.statusElement,
    this.experimental,
    this.experimentalElement,
    this.date,
    this.dateElement,
    this.publisher,
    this.publisherElement,
    this.contact,
    this.description,
    this.descriptionElement,
    this.useContext,
    this.jurisdiction,
    this.immutable,
    this.immutableElement,
    this.purpose,
    this.purposeElement,
    this.copyright,
    this.copyrightElement,
    this.compose,
    this.expansion,
  }): super(resourceType: R4ResourceType.ValueSet);

@override
ValueSet clone() => this;

}


@Data()
@JsonCodable()
class ValueSetCompose {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirDate? lockedDate;
  final Element? lockedDateElement;
  final FhirBoolean? inactive;
  final Element? inactiveElement;
  final List<ValueSetInclude> include;
  final List<ValueSetInclude>? exclude;

  ValueSetCompose({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.lockedDate,
    this.lockedDateElement,
    this.inactive,
    this.inactiveElement,
    required this.include,
    this.exclude,
  });

}


@Data()
@JsonCodable()
class ValueSetInclude {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirUri? system;
  final Element? systemElement;
  final FhirString? version;
  final Element? versionElement;
  final List<ValueSetConcept>? concept;
  final List<ValueSetFilter>? filter;
  final List<FhirCanonical>? valueSet;

  ValueSetInclude({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.system,
    this.systemElement,
    this.version,
    this.versionElement,
    this.concept,
    this.filter,
    this.valueSet,
  });

}


@Data()
@JsonCodable()
class ValueSetConcept {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirCode? code;
  final Element? codeElement;
  final FhirString? display;
  final Element? displayElement;
  final List<ValueSetDesignation>? designation;

  ValueSetConcept({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.code,
    this.codeElement,
    this.display,
    this.displayElement,
    this.designation,
  });

}


@Data()
@JsonCodable()
class ValueSetDesignation {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirCode? language;
  final Element? languageElement;
  final Coding? use;
  final FhirString? value;
  final Element? valueElement;

  ValueSetDesignation({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.language,
    this.languageElement,
    this.use,
    this.value,
    this.valueElement,
  });

}


@Data()
@JsonCodable()
class ValueSetFilter {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirCode? property;
  final Element? propertyElement;
  final FhirCode? op;
  final Element? opElement;
  final FhirString? value;
  final Element? valueElement;

  ValueSetFilter({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.property,
    this.propertyElement,
    this.op,
    this.opElement,
    this.value,
    this.valueElement,
  });

}


@Data()
@JsonCodable()
class ValueSetExpansion {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirUri? identifier;
  final Element? identifierElement;
  final FhirDateTime? timestamp;
  final Element? timestampElement;
  final FhirInteger? total;
  final Element? totalElement;
  final FhirInteger? offset;
  final Element? offsetElement;
  final List<ValueSetParameter>? parameter;
  final List<ValueSetContains>? contains;

  ValueSetExpansion({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.identifierElement,
    this.timestamp,
    this.timestampElement,
    this.total,
    this.totalElement,
    this.offset,
    this.offsetElement,
    this.parameter,
    this.contains,
  });

}


@Data()
@JsonCodable()
class ValueSetParameter {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirString? name;
  final Element? nameElement;
  final FhirString? valueString;
  final Element? valueStringElement;
  final bool? valueBoolean;
  final Element? valueBooleanElement;
  final double? valueInteger;
  final Element? valueIntegerElement;
  final double? valueDecimal;
  final Element? valueDecimalElement;
  final FhirString? valueUri;
  final Element? valueUriElement;
  final FhirString? valueCode;
  final Element? valueCodeElement;
  final FhirString? valueDateTime;
  final Element? valueDateTimeElement;

  ValueSetParameter({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.name,
    this.nameElement,
    this.valueString,
    this.valueStringElement,
    this.valueBoolean,
    this.valueBooleanElement,
    this.valueInteger,
    this.valueIntegerElement,
    this.valueDecimal,
    this.valueDecimalElement,
    this.valueUri,
    this.valueUriElement,
    this.valueCode,
    this.valueCodeElement,
    this.valueDateTime,
    this.valueDateTimeElement,
  });

}


@Data()
@JsonCodable()
class ValueSetContains {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirUri? system;
  final Element? systemElement;
  final FhirBoolean? abstract_;
  final Element? abstractElement;
  final FhirBoolean? inactive;
  final Element? inactiveElement;
  final FhirString? version;
  final Element? versionElement;
  final FhirCode? code;
  final Element? codeElement;
  final FhirString? display;
  final Element? displayElement;
  final List<ValueSetDesignation>? designation;
  final List<ValueSetContains>? contains;

  ValueSetContains({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.system,
    this.systemElement,
    this.abstract_,
    this.abstractElement,
    this.inactive,
    this.inactiveElement,
    this.version,
    this.versionElement,
    this.code,
    this.codeElement,
    this.display,
    this.displayElement,
    this.designation,
    this.contains,
  });

}



