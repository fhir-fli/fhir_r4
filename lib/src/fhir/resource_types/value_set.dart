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
  final BackboneElement? compose;
  final List<BackboneElement> include;
  final List<BackboneElement>? concept;
  final List<BackboneElement>? designation;
  final List<BackboneElement>? filter;
  final BackboneElement? expansion;
  final List<BackboneElement>? parameter;
  final List<BackboneElement>? contains;

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
    required this.include,
    this.concept,
    this.designation,
    this.filter,
    this.expansion,
    this.parameter,
    this.contains,
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
  final List<dynamic>? exclude;

  ValueSetCompose({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.lockedDate,
this.lockedDateElement,
    this.inactive,
this.inactiveElement,
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

  ValueSetConcept({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
this.codeElement,
    this.display,
this.displayElement,
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
  });

@override
ValueSetExpansion clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ValueSetParameter extends BackboneElement {
  final FhirString name;
  final Element? nameElement;
  final FhirString? valueFhirString;
  final Element? valueFhirStringElement;
  final FhirBoolean? valueFhirBoolean;
  final Element? valueFhirBooleanElement;
  final FhirInteger? valueFhirInteger;
  final Element? valueFhirIntegerElement;
  final FhirDecimal? valueFhirDecimal;
  final Element? valueFhirDecimalElement;
  final FhirUri? valueFhirUri;
  final Element? valueFhirUriElement;
  final FhirCode? valueFhirCode;
  final Element? valueFhirCodeElement;
  final FhirDateTime? valueFhirDateTime;
  final Element? valueFhirDateTimeElement;

  ValueSetParameter({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
this.nameElement,
    this.valueFhirString,
this.valueFhirStringElement,
    this.valueFhirBoolean,
this.valueFhirBooleanElement,
    this.valueFhirInteger,
this.valueFhirIntegerElement,
    this.valueFhirDecimal,
this.valueFhirDecimalElement,
    this.valueFhirUri,
this.valueFhirUriElement,
    this.valueFhirCode,
this.valueFhirCodeElement,
    this.valueFhirDateTime,
this.valueFhirDateTimeElement,
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
  final List<dynamic>? designation;
  final List<dynamic>? contains;

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

