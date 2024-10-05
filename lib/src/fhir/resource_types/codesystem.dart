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
  final FhirMarkdown? purpose;
  final Element? purposeElement;
  final FhirMarkdown? copyright;
  final Element? copyrightElement;
  final FhirBoolean? caseSensitive;
  final Element? caseSensitiveElement;
  final FhirCanonical? valueSet;
  final FhirCode? hierarchyMeaning;
  final Element? hierarchyMeaningElement;
  final FhirBoolean? compositional;
  final Element? compositionalElement;
  final FhirBoolean? versionNeeded;
  final Element? versionNeededElement;
  final FhirCode? content;
  final Element? contentElement;
  final FhirCanonical? supplements;
  final FhirUnsignedInt? count;
  final Element? countElement;
  final List<CodeSystemFilter>? filter;
  final List<CodeSystemProperty>? property;
  final List<CodeSystemConcept>? concept;

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
    this.purpose,
    this.purposeElement,
    this.copyright,
    this.copyrightElement,
    this.caseSensitive,
    this.caseSensitiveElement,
    this.valueSet,
    this.hierarchyMeaning,
    this.hierarchyMeaningElement,
    this.compositional,
    this.compositionalElement,
    this.versionNeeded,
    this.versionNeededElement,
    this.content,
    this.contentElement,
    this.supplements,
    this.count,
    this.countElement,
    this.filter,
    this.property,
    this.concept,
  }): super(resourceType: R4ResourceType.CodeSystem);

@override
CodeSystem clone() => this;

}


@Data()
@JsonCodable()
class CodeSystemFilter {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirCode? code;
  final Element? codeElement;
  final FhirString? description;
  final Element? descriptionElement;
  final List<FhirCode>? operator_;
  final List<Element>? operatorElement;
  final FhirString? value;
  final Element? valueElement;

  CodeSystemFilter({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.code,
    this.codeElement,
    this.description,
    this.descriptionElement,
    this.operator_,
    this.operatorElement,
    this.value,
    this.valueElement,
  });

}


@Data()
@JsonCodable()
class CodeSystemProperty {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirCode? code;
  final Element? codeElement;
  final FhirUri? uri;
  final Element? uriElement;
  final FhirString? description;
  final Element? descriptionElement;
  final FhirCode? type;
  final Element? typeElement;

  CodeSystemProperty({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.code,
    this.codeElement,
    this.uri,
    this.uriElement,
    this.description,
    this.descriptionElement,
    this.type,
    this.typeElement,
  });

}


@Data()
@JsonCodable()
class CodeSystemConcept {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirCode? code;
  final Element? codeElement;
  final FhirString? display;
  final Element? displayElement;
  final FhirString? definition;
  final Element? definitionElement;
  final List<CodeSystemDesignation>? designation;
  final List<CodeSystemProperty1>? property;
  final List<CodeSystemConcept>? concept;

  CodeSystemConcept({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.code,
    this.codeElement,
    this.display,
    this.displayElement,
    this.definition,
    this.definitionElement,
    this.designation,
    this.property,
    this.concept,
  });

}


@Data()
@JsonCodable()
class CodeSystemDesignation {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirCode? language;
  final Element? languageElement;
  final Coding? use;
  final FhirString? value;
  final Element? valueElement;

  CodeSystemDesignation({
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
class CodeSystemProperty1 {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirCode? code;
  final Element? codeElement;
  final FhirString? valueCode;
  final Element? valueCodeElement;
  final Coding? valueCoding;
  final FhirString? valueString;
  final Element? valueStringElement;
  final double? valueInteger;
  final Element? valueIntegerElement;
  final bool? valueBoolean;
  final Element? valueBooleanElement;
  final FhirString? valueDateTime;
  final Element? valueDateTimeElement;
  final double? valueDecimal;
  final Element? valueDecimalElement;

  CodeSystemProperty1({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.code,
    this.codeElement,
    this.valueCode,
    this.valueCodeElement,
    this.valueCoding,
    this.valueString,
    this.valueStringElement,
    this.valueInteger,
    this.valueIntegerElement,
    this.valueBoolean,
    this.valueBooleanElement,
    this.valueDateTime,
    this.valueDateTimeElement,
    this.valueDecimal,
    this.valueDecimalElement,
  });

}



