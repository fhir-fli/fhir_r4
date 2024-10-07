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
  final FhirCode status;
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
    required this.status,
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
  }) : super(resourceType: R4ResourceType.ValueSet);

  @override
  ValueSet clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ValueSetCompose extends BackboneElement {
  final FhirDate? lockedDate;
  final Element? lockedDateElement;
  final FhirBoolean? inactive;
  final Element? inactiveElement;
  final List<ValueSetInclude> include;
  final List<ValueSetInclude>? exclude;

  ValueSetCompose({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.lockedDate,
    this.lockedDateElement,
    this.inactive,
    this.inactiveElement,
    required this.include,
    this.exclude,
  });

  @override
  ValueSetCompose clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ValueSetInclude extends BackboneElement {
  final FhirUri? system;
  final Element? systemElement;
  final FhirString? version;
  final Element? versionElement;
  final List<ValueSetConcept>? concept;
  final List<ValueSetFilter>? filter;
  final List<FhirCanonical>? valueSet;
  final List<Element>? valueSetElement;

  ValueSetInclude({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.system,
    this.systemElement,
    this.version,
    this.versionElement,
    this.concept,
    this.filter,
    this.valueSet,
    this.valueSetElement,
  });

  @override
  ValueSetInclude clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ValueSetConcept extends BackboneElement {
  final FhirCode code;
  final Element? codeElement;
  final FhirString? display;
  final Element? displayElement;
  final List<ValueSetDesignation>? designation;

  ValueSetConcept({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.codeElement,
    this.display,
    this.displayElement,
    this.designation,
  });

  @override
  ValueSetConcept clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ValueSetDesignation extends BackboneElement {
  final FhirCode? language;
  final Element? languageElement;
  final Coding? use;
  final FhirString value;
  final Element? valueElement;

  ValueSetDesignation({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.language,
    this.languageElement,
    this.use,
    required this.value,
    this.valueElement,
  });

  @override
  ValueSetDesignation clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ValueSetFilter extends BackboneElement {
  final FhirCode property;
  final Element? propertyElement;
  final FhirCode op;
  final Element? opElement;
  final FhirString value;
  final Element? valueElement;

  ValueSetFilter({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.property,
    this.propertyElement,
    required this.op,
    this.opElement,
    required this.value,
    this.valueElement,
  });

  @override
  ValueSetFilter clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ValueSetExpansion extends BackboneElement {
  final FhirUri? identifier;
  final Element? identifierElement;
  final FhirDateTime timestamp;
  final Element? timestampElement;
  final FhirInteger? total;
  final Element? totalElement;
  final FhirInteger? offset;
  final Element? offsetElement;
  final List<ValueSetParameter>? parameter;
  final List<ValueSetContains>? contains;

  ValueSetExpansion({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.identifierElement,
    required this.timestamp,
    this.timestampElement,
    this.total,
    this.totalElement,
    this.offset,
    this.offsetElement,
    this.parameter,
    this.contains,
  });

  @override
  ValueSetExpansion clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ValueSetParameter extends BackboneElement {
  final FhirString name;
  final Element? nameElement;
  final FhirString? valueString;
  final Element? valueStringElement;
  final FhirBoolean? valueBoolean;
  final Element? valueBooleanElement;
  final FhirInteger? valueInteger;
  final Element? valueIntegerElement;
  final FhirDecimal? valueDecimal;
  final Element? valueDecimalElement;
  final FhirUri? valueUri;
  final Element? valueUriElement;
  final FhirCode? valueCode;
  final Element? valueCodeElement;
  final FhirDateTime? valueDateTime;
  final Element? valueDateTimeElement;

  ValueSetParameter({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
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

  @override
  ValueSetParameter clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ValueSetContains extends BackboneElement {
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
    super.id,
    super.extension_,
    super.modifierExtension,
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

  @override
  ValueSetContains clone() => throw UnimplementedError();
}
