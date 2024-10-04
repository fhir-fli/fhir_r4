import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class ValueSet {
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
  final List<Identifier> identifier;
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
  final FhirBoolean immutable;
  final PrimitiveElement Immutable;
  final FhirMarkdown purpose;
  final PrimitiveElement Purpose;
  final FhirMarkdown copyright;
  final PrimitiveElement Copyright;
  final ValueSetCompose compose;
  final ValueSetExpansion expansion;
}

@Data()
@JsonCodable()
class ValueSetCompose {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirDate lockedDate;
  final PrimitiveElement LockedDate;
  final FhirBoolean inactive;
  final PrimitiveElement Inactive;
  final List<ValueSetInclude> include;
  final List<ValueSetInclude> exclude;
}

@Data()
@JsonCodable()
class ValueSetInclude {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirUri system;
  final PrimitiveElement System;
  final String version;
  final PrimitiveElement Version;
  final List<ValueSetConcept> concept;
  final List<ValueSetFilter> filter;
  final List<FhirCanonical> valueSet;
}

@Data()
@JsonCodable()
class ValueSetConcept {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCode code;
  final PrimitiveElement Code;
  final String display;
  final PrimitiveElement Display;
  final List<ValueSetDesignation> designation;
}

@Data()
@JsonCodable()
class ValueSetDesignation {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCode language;
  final PrimitiveElement Language;
  final Coding use;
  final String value;
  final PrimitiveElement Value;
}

@Data()
@JsonCodable()
class ValueSetFilter {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCode property;
  final PrimitiveElement Property;
  final FhirCode op;
  final PrimitiveElement Op;
  final String value;
  final PrimitiveElement Value;
}

@Data()
@JsonCodable()
class ValueSetExpansion {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirUri identifier;
  final PrimitiveElement Identifier;
  final FhirDateTime timestamp;
  final PrimitiveElement Timestamp;
  final FhirInteger total;
  final PrimitiveElement Total;
  final FhirInteger offset;
  final PrimitiveElement Offset;
  final List<ValueSetParameter> parameter;
  final List<ValueSetContains> contains;
}

@Data()
@JsonCodable()
class ValueSetParameter {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String name;
  final PrimitiveElement Name;
  final String valueString;
  final PrimitiveElement ValueString;
  final bool valueBoolean;
  final PrimitiveElement ValueBoolean;
  final double valueInteger;
  final PrimitiveElement ValueInteger;
  final double valueDecimal;
  final PrimitiveElement ValueDecimal;
  final String valueUri;
  final PrimitiveElement ValueUri;
  final String valueCode;
  final PrimitiveElement ValueCode;
  final String valueDateTime;
  final PrimitiveElement ValueDateTime;
}

@Data()
@JsonCodable()
class ValueSetContains {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirUri system;
  final PrimitiveElement System;
  final FhirBoolean abstract;
  final PrimitiveElement Abstract;
  final FhirBoolean inactive;
  final PrimitiveElement Inactive;
  final String version;
  final PrimitiveElement Version;
  final FhirCode code;
  final PrimitiveElement Code;
  final String display;
  final PrimitiveElement Display;
  final List<ValueSetDesignation> designation;
  final List<ValueSetContains> contains;
}


