import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class TerminologyCapabilities {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirUri url;
  final PrimitiveElement urlElement;
  final String version;
  final PrimitiveElement versionElement;
  final String name;
  final PrimitiveElement nameElement;
  final String title;
  final PrimitiveElement titleElement;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final FhirBoolean experimental;
  final PrimitiveElement experimentalElement;
  final FhirDateTime date;
  final PrimitiveElement dateElement;
  final String publisher;
  final PrimitiveElement publisherElement;
  final List<ContactDetail> contact;
  final FhirMarkdown description;
  final PrimitiveElement descriptionElement;
  final List<UsageContext> useContext;
  final List<CodeableConcept> jurisdiction;
  final FhirMarkdown purpose;
  final PrimitiveElement purposeElement;
  final FhirMarkdown copyright;
  final PrimitiveElement copyrightElement;
  final FhirCode kind;
  final PrimitiveElement kindElement;
  final TerminologyCapabilitiesSoftware software;
  final TerminologyCapabilitiesImplementation implementation;
  final FhirBoolean lockedDate;
  final PrimitiveElement lockedDateElement;
  final List<TerminologyCapabilitiesCodeSystem> codeSystem;
  final TerminologyCapabilitiesExpansion expansion;
  final FhirCode codeSearch;
  final PrimitiveElement codeSearchElement;
  final TerminologyCapabilitiesValidateCode validateCode;
  final TerminologyCapabilitiesTranslation translation;
  final TerminologyCapabilitiesClosure closure;
}

@Data()
@JsonCodable()
class TerminologyCapabilitiesSoftware {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String name;
  final PrimitiveElement nameElement;
  final String version;
  final PrimitiveElement versionElement;
}

@Data()
@JsonCodable()
class TerminologyCapabilitiesImplementation {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String description;
  final PrimitiveElement descriptionElement;
  final FhirUrl url;
  final PrimitiveElement urlElement;
}

@Data()
@JsonCodable()
class TerminologyCapabilitiesCodeSystem {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCanonical uri;
  final List<TerminologyCapabilitiesVersion> version;
  final FhirBoolean subsumption;
  final PrimitiveElement subsumptionElement;
}

@Data()
@JsonCodable()
class TerminologyCapabilitiesVersion {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String code;
  final PrimitiveElement codeElement;
  final FhirBoolean isDefault;
  final PrimitiveElement isDefaultElement;
  final FhirBoolean compositional;
  final PrimitiveElement compositionalElement;
  final List<FhirCode> language;
  final List<PrimitiveElement> languageElement;
  final List<TerminologyCapabilitiesFilter> filter;
  final List<FhirCode> property;
  final List<PrimitiveElement> propertyElement;
}

@Data()
@JsonCodable()
class TerminologyCapabilitiesFilter {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode code;
  final PrimitiveElement codeElement;
  final List<FhirCode> op;
  final List<PrimitiveElement> opElement;
}

@Data()
@JsonCodable()
class TerminologyCapabilitiesExpansion {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirBoolean hierarchical;
  final PrimitiveElement hierarchicalElement;
  final FhirBoolean paging;
  final PrimitiveElement pagingElement;
  final FhirBoolean incomplete;
  final PrimitiveElement incompleteElement;
  final List<TerminologyCapabilitiesParameter> parameter;
  final FhirMarkdown textFilter;
  final PrimitiveElement textFilterElement;
}

@Data()
@JsonCodable()
class TerminologyCapabilitiesParameter {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode name;
  final PrimitiveElement nameElement;
  final String documentation;
  final PrimitiveElement documentationElement;
}

@Data()
@JsonCodable()
class TerminologyCapabilitiesValidateCode {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirBoolean translations;
  final PrimitiveElement translationsElement;
}

@Data()
@JsonCodable()
class TerminologyCapabilitiesTranslation {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirBoolean needsMap;
  final PrimitiveElement needsMapElement;
}

@Data()
@JsonCodable()
class TerminologyCapabilitiesClosure {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirBoolean translation;
  final PrimitiveElement translationElement;
}


