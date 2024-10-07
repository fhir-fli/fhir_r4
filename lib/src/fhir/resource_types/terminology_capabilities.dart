import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
class TerminologyCapabilities extends DomainResource {
  TerminologyCapabilities({
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
    required this.date,
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
    required this.kind,
    this.kindElement,
    this.software,
    this.implementation,
    this.lockedDate,
    this.lockedDateElement,
    this.codeSystem,
    this.expansion,
    this.codeSearch,
    this.codeSearchElement,
    this.validateCode,
    this.translation,
    this.closure,
  }) : super(resourceType: R4ResourceType.TerminologyCapabilities);

  final FhirUri? url;
  final Element? urlElement;
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
  final FhirDateTime date;
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
  final FhirCode kind;
  final Element? kindElement;
  final TerminologyCapabilitiesSoftware? software;
  final TerminologyCapabilitiesImplementation? implementation;
  final FhirBoolean? lockedDate;
  final Element? lockedDateElement;
  final List<TerminologyCapabilitiesCodeSystem>? codeSystem;
  final TerminologyCapabilitiesExpansion? expansion;
  final FhirCode? codeSearch;
  final Element? codeSearchElement;
  final TerminologyCapabilitiesValidateCode? validateCode;
  final TerminologyCapabilitiesTranslation? translation;
  final TerminologyCapabilitiesClosure? closure;
  @override
  TerminologyCapabilities clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class TerminologyCapabilitiesSoftware extends BackboneElement {
  TerminologyCapabilitiesSoftware({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.nameElement,
    this.version,
    this.versionElement,
  });

  final FhirString name;
  final Element? nameElement;
  final FhirString? version;
  final Element? versionElement;
  @override
  TerminologyCapabilitiesSoftware clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class TerminologyCapabilitiesImplementation extends BackboneElement {
  TerminologyCapabilitiesImplementation({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.description,
    this.descriptionElement,
    this.url,
    this.urlElement,
  });

  final FhirString description;
  final Element? descriptionElement;
  final FhirUrl? url;
  final Element? urlElement;
  @override
  TerminologyCapabilitiesImplementation clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class TerminologyCapabilitiesCodeSystem extends BackboneElement {
  TerminologyCapabilitiesCodeSystem({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.uri,
    this.uriElement,
    this.version,
    this.subsumption,
    this.subsumptionElement,
  });

  final FhirCanonical? uri;
  final Element? uriElement;
  final List<TerminologyCapabilitiesVersion>? version;
  final FhirBoolean? subsumption;
  final Element? subsumptionElement;
  @override
  TerminologyCapabilitiesCodeSystem clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class TerminologyCapabilitiesVersion extends BackboneElement {
  TerminologyCapabilitiesVersion({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.codeElement,
    this.isDefault,
    this.isDefaultElement,
    this.compositional,
    this.compositionalElement,
    this.language,
    this.languageElement,
    this.filter,
    this.property,
    this.propertyElement,
  });

  final FhirString? code;
  final Element? codeElement;
  final FhirBoolean? isDefault;
  final Element? isDefaultElement;
  final FhirBoolean? compositional;
  final Element? compositionalElement;
  final List<FhirCode>? language;
  final List<Element>? languageElement;
  final List<TerminologyCapabilitiesFilter>? filter;
  final List<FhirCode>? property;
  final List<Element>? propertyElement;
  @override
  TerminologyCapabilitiesVersion clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class TerminologyCapabilitiesFilter extends BackboneElement {
  TerminologyCapabilitiesFilter({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.codeElement,
    required this.op,
    this.opElement,
  });

  final FhirCode code;
  final Element? codeElement;
  final List<FhirCode> op;
  final List<Element>? opElement;
  @override
  TerminologyCapabilitiesFilter clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class TerminologyCapabilitiesExpansion extends BackboneElement {
  TerminologyCapabilitiesExpansion({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.hierarchical,
    this.hierarchicalElement,
    this.paging,
    this.pagingElement,
    this.incomplete,
    this.incompleteElement,
    this.parameter,
    this.textFilter,
    this.textFilterElement,
  });

  final FhirBoolean? hierarchical;
  final Element? hierarchicalElement;
  final FhirBoolean? paging;
  final Element? pagingElement;
  final FhirBoolean? incomplete;
  final Element? incompleteElement;
  final List<TerminologyCapabilitiesParameter>? parameter;
  final FhirMarkdown? textFilter;
  final Element? textFilterElement;
  @override
  TerminologyCapabilitiesExpansion clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class TerminologyCapabilitiesParameter extends BackboneElement {
  TerminologyCapabilitiesParameter({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.nameElement,
    this.documentation,
    this.documentationElement,
  });

  final FhirCode name;
  final Element? nameElement;
  final FhirString? documentation;
  final Element? documentationElement;
  @override
  TerminologyCapabilitiesParameter clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class TerminologyCapabilitiesValidateCode extends BackboneElement {
  TerminologyCapabilitiesValidateCode({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.translations,
    this.translationsElement,
  });

  final FhirBoolean translations;
  final Element? translationsElement;
  @override
  TerminologyCapabilitiesValidateCode clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class TerminologyCapabilitiesTranslation extends BackboneElement {
  TerminologyCapabilitiesTranslation({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.needsMap,
    this.needsMapElement,
  });

  final FhirBoolean needsMap;
  final Element? needsMapElement;
  @override
  TerminologyCapabilitiesTranslation clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class TerminologyCapabilitiesClosure extends BackboneElement {
  TerminologyCapabilitiesClosure({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.translation,
    this.translationElement,
  });

  final FhirBoolean? translation;
  final Element? translationElement;
  @override
  TerminologyCapabilitiesClosure clone() => throw UnimplementedError();
}
