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
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirUri url;
  final PrimitiveElement Url;
  final String version;
  final PrimitiveElement Version;
  final String name;
  final PrimitiveElement Name;
  final String title;
  final PrimitiveElement Title;
  final FhirCode status;
  final PrimitiveElement Status;
  final FhirBoolean experimental;
  final PrimitiveElement Experimental;
  final FhirDateTime date;
  final PrimitiveElement Date;
  final String publisher;
  final PrimitiveElement Publisher;
  final List<ContactDetail> contact;
  final FhirMarkdown description;
  final PrimitiveElement Description;
  final List<UsageContext> useContext;
  final List<CodeableConcept> jurisdiction;
  final FhirMarkdown purpose;
  final PrimitiveElement Purpose;
  final FhirMarkdown copyright;
  final PrimitiveElement Copyright;
  final FhirCode kind;
  final PrimitiveElement Kind;
  final TerminologyCapabilitiesSoftware software;
  final TerminologyCapabilitiesImplementation implementation;
  final FhirBoolean lockedDate;
  final PrimitiveElement LockedDate;
  final List<TerminologyCapabilitiesCodeSystem> codeSystem;
  final TerminologyCapabilitiesExpansion expansion;
  final FhirCode codeSearch;
  final PrimitiveElement CodeSearch;
  final TerminologyCapabilitiesValidateCode validateCode;
  final TerminologyCapabilitiesTranslation translation;
  final TerminologyCapabilitiesClosure closure;
}

@Data()
@JsonCodable()
class TerminologyCapabilitiesSoftware {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String name;
  final PrimitiveElement Name;
  final String version;
  final PrimitiveElement Version;
}

@Data()
@JsonCodable()
class TerminologyCapabilitiesImplementation {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String description;
  final PrimitiveElement Description;
  final FhirUrl url;
  final PrimitiveElement Url;
}

@Data()
@JsonCodable()
class TerminologyCapabilitiesCodeSystem {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCanonical uri;
  final List<TerminologyCapabilitiesVersion> version;
  final FhirBoolean subsumption;
  final PrimitiveElement Subsumption;
}

@Data()
@JsonCodable()
class TerminologyCapabilitiesVersion {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String code;
  final PrimitiveElement Code;
  final FhirBoolean isDefault;
  final PrimitiveElement IsDefault;
  final FhirBoolean compositional;
  final PrimitiveElement Compositional;
  final List<FhirCode> language;
  final List<PrimitiveElement> Language;
  final List<TerminologyCapabilitiesFilter> filter;
  final List<FhirCode> property;
  final List<PrimitiveElement> Property;
}

@Data()
@JsonCodable()
class TerminologyCapabilitiesFilter {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCode code;
  final PrimitiveElement Code;
  final List<FhirCode> op;
  final List<PrimitiveElement> Op;
}

@Data()
@JsonCodable()
class TerminologyCapabilitiesExpansion {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirBoolean hierarchical;
  final PrimitiveElement Hierarchical;
  final FhirBoolean paging;
  final PrimitiveElement Paging;
  final FhirBoolean incomplete;
  final PrimitiveElement Incomplete;
  final List<TerminologyCapabilitiesParameter> parameter;
  final FhirMarkdown textFilter;
  final PrimitiveElement TextFilter;
}

@Data()
@JsonCodable()
class TerminologyCapabilitiesParameter {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCode name;
  final PrimitiveElement Name;
  final String documentation;
  final PrimitiveElement Documentation;
}

@Data()
@JsonCodable()
class TerminologyCapabilitiesValidateCode {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirBoolean translations;
  final PrimitiveElement Translations;
}

@Data()
@JsonCodable()
class TerminologyCapabilitiesTranslation {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirBoolean needsMap;
  final PrimitiveElement NeedsMap;
}

@Data()
@JsonCodable()
class TerminologyCapabilitiesClosure {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirBoolean translation;
  final PrimitiveElement Translation;
}


