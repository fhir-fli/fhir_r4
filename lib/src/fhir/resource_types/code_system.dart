import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class CodeSystem extends DomainResource {
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
  final FhirMarkdown? purpose;
  final Element? purposeElement;
  final FhirMarkdown? copyright;
  final Element? copyrightElement;
  final FhirBoolean? caseSensitive;
  final Element? caseSensitiveElement;
  final FhirCanonical? valueSet;
  final Element? valueSetElement;
  final FhirCode? hierarchyMeaning;
  final Element? hierarchyMeaningElement;
  final FhirBoolean? compositional;
  final Element? compositionalElement;
  final FhirBoolean? versionNeeded;
  final Element? versionNeededElement;
  final FhirCode content;
  final Element? contentElement;
  final FhirCanonical? supplements;
  final Element? supplementsElement;
  final FhirUnsignedInt? count;
  final Element? countElement;
  final List<BackboneElement>? filter;
  final List<BackboneElement>? property;
  final List<BackboneElement>? concept;
  final List<BackboneElement>? designation;
  final List<BackboneElement>? property;

  CodeSystem({
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
    this.purpose,
this.purposeElement,
    this.copyright,
this.copyrightElement,
    this.caseSensitive,
this.caseSensitiveElement,
    this.valueSet,
this.valueSetElement,
    this.hierarchyMeaning,
this.hierarchyMeaningElement,
    this.compositional,
this.compositionalElement,
    this.versionNeeded,
this.versionNeededElement,
    required this.content,
this.contentElement,
    this.supplements,
this.supplementsElement,
    this.count,
this.countElement,
    this.filter,
    this.property,
    this.concept,
    this.designation,
    this.property,
  }) : super(resourceType: R4ResourceType.CodeSystem);

@override
CodeSystem clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class CodeSystemFilter extends BackboneElement {
  final FhirCode code;
  final Element? codeElement;
  final FhirString? description;
  final Element? descriptionElement;
  final List<FhirCode> operator_;
  final List<Element>? operatorElement;
  final FhirString value;
  final Element? valueElement;

  CodeSystemFilter({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
this.codeElement,
    this.description,
this.descriptionElement,
    required this.operator_,
this.operatorElement,
    required this.value,
this.valueElement,
  });

@override
CodeSystemFilter clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class CodeSystemProperty extends BackboneElement {
  final FhirCode code;
  final Element? codeElement;
  final FhirUri? uri;
  final Element? uriElement;
  final FhirString? description;
  final Element? descriptionElement;
  final FhirCode type;
  final Element? typeElement;

  CodeSystemProperty({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
this.codeElement,
    this.uri,
this.uriElement,
    this.description,
this.descriptionElement,
    required this.type,
this.typeElement,
  });

@override
CodeSystemProperty clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class CodeSystemConcept extends BackboneElement {
  final FhirCode code;
  final Element? codeElement;
  final FhirString? display;
  final Element? displayElement;
  final FhirString? definition;
  final Element? definitionElement;
  final List<dynamic>? concept;

  CodeSystemConcept({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
this.codeElement,
    this.display,
this.displayElement,
    this.definition,
this.definitionElement,
    this.concept,
  });

@override
CodeSystemConcept clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class CodeSystemDesignation extends BackboneElement {
  final FhirCode? language;
  final Element? languageElement;
  final Coding? use;
  final FhirString value;
  final Element? valueElement;

  CodeSystemDesignation({
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
CodeSystemDesignation clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class CodeSystemProperty extends BackboneElement {
  final FhirCode code;
  final Element? codeElement;
  final FhirCode valueFhirCode;
  final Element? valueFhirCodeElement;
  final Coding valueCoding;
  final FhirString valueFhirString;
  final Element? valueFhirStringElement;
  final FhirInteger valueFhirInteger;
  final Element? valueFhirIntegerElement;
  final FhirBoolean valueFhirBoolean;
  final Element? valueFhirBooleanElement;
  final FhirDateTime valueFhirDateTime;
  final Element? valueFhirDateTimeElement;
  final FhirDecimal valueFhirDecimal;
  final Element? valueFhirDecimalElement;

  CodeSystemProperty({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
this.codeElement,
    required this.valueFhirCode,
this.valueFhirCodeElement,
    required this.valueCoding,
    required this.valueFhirString,
this.valueFhirStringElement,
    required this.valueFhirInteger,
this.valueFhirIntegerElement,
    required this.valueFhirBoolean,
this.valueFhirBooleanElement,
    required this.valueFhirDateTime,
this.valueFhirDateTimeElement,
    required this.valueFhirDecimal,
this.valueFhirDecimalElement,
  });

@override
CodeSystemProperty clone() => throw UnimplementedError();
}
