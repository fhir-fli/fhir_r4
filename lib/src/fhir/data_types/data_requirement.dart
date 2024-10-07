import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [DataRequirement] /// Describes a required data item for evaluation in terms of the type of data,
/// and optional code or date-based filters of the data.
class DataRequirement extends DataType {
  DataRequirement({
    super.id,
    super.extension_,
    required this.type,
    this.typeElement,
    this.profile,
    this.profileElement,
    this.subjectCodeableConcept,
    this.subjectReference,
    this.mustSupport,
    this.mustSupportElement,
    this.codeFilter,
    this.dateFilter,
    this.limit,
    this.limitElement,
    this.sort,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// The type of the required data, specified as the type name of a resource.
  /// For profiles, this value is set to the type of the base resource of the
  /// profile.
  final FhirCode type;
  final Element? typeElement;

  /// [profile] /// The profile of the required data, specified as the uri of the profile
  /// definition.
  final List<FhirCanonical>? profile;
  final List<Element>? profileElement;

  /// [subjectCodeableConcept] /// The intended subjects of the data requirement. If this element is not
  /// provided, a Patient subject is assumed.
  final CodeableConcept? subjectCodeableConcept;

  /// [subjectReference] /// The intended subjects of the data requirement. If this element is not
  /// provided, a Patient subject is assumed.
  final Reference? subjectReference;

  /// [mustSupport] /// Indicates that specific elements of the type are referenced by the
  /// knowledge module and must be supported by the consumer in order to obtain
  /// an effective evaluation. This does not mean that a value is required for
  /// this element, only that the consuming system must understand the element
  /// and be able to provide values for it if they are available.
  ///
  /// The value of mustSupport SHALL be a FHIRPath resolveable on the type of the
  /// DataRequirement. The path SHALL consist only of identifiers, constant
  /// indexers, and .resolve() (see the [Simple FHIRPath
  /// Profile](fhirpath.html#simple) for full details).
  final List<FhirString>? mustSupport;
  final List<Element>? mustSupportElement;

  /// [codeFilter] /// Code filters specify additional constraints on the data, specifying the
  /// value set of interest for a particular element of the data. Each code
  /// filter defines an additional constraint on the data, i.e. code filters are
  /// AND'ed, not OR'ed.
  final List<Element>? codeFilter;

  /// [dateFilter] /// Date filters specify additional constraints on the data in terms of the
  /// applicable date range for specific elements. Each date filter specifies an
  /// additional constraint on the data, i.e. date filters are AND'ed, not OR'ed.
  final List<Element>? dateFilter;

  /// [limit] /// Specifies a maximum number of results that are required (uses the _count
  /// search parameter).
  final FhirPositiveInt? limit;
  final Element? limitElement;

  /// [sort] /// Specifies the order of the results to be returned.
  final List<Element>? sort;
  @override
  DataRequirement clone() => throw UnimplementedError();
  DataRequirement copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirCode? type,
    Element? typeElement,
    List<FhirCanonical>? profile,
    List<Element>? profileElement,
    CodeableConcept? subjectCodeableConcept,
    Reference? subjectReference,
    List<FhirString>? mustSupport,
    List<Element>? mustSupportElement,
    List<Element>? codeFilter,
    List<Element>? dateFilter,
    FhirPositiveInt? limit,
    Element? limitElement,
    List<Element>? sort,
  }) {
    return DataRequirement(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      profile: profile ?? this.profile,
      profileElement: profileElement ?? this.profileElement,
      subjectCodeableConcept:
          subjectCodeableConcept ?? this.subjectCodeableConcept,
      subjectReference: subjectReference ?? this.subjectReference,
      mustSupport: mustSupport ?? this.mustSupport,
      mustSupportElement: mustSupportElement ?? this.mustSupportElement,
      codeFilter: codeFilter ?? this.codeFilter,
      dateFilter: dateFilter ?? this.dateFilter,
      limit: limit ?? this.limit,
      limitElement: limitElement ?? this.limitElement,
      sort: sort ?? this.sort,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [DataRequirementCodeFilter] /// Code filters specify additional constraints on the data, specifying the
/// value set of interest for a particular element of the data. Each code
/// filter defines an additional constraint on the data, i.e. code filters are
/// AND'ed, not OR'ed.
class DataRequirementCodeFilter extends Element {
  DataRequirementCodeFilter({
    super.id,
    super.extension_,
    this.path,
    this.pathElement,
    this.searchParam,
    this.searchParamElement,
    this.valueSet,
    this.valueSetElement,
    this.code,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [path] /// The code-valued attribute of the filter. The specified path SHALL be a
  /// FHIRPath resolveable on the specified type of the DataRequirement, and
  /// SHALL consist only of identifiers, constant indexers, and .resolve(). The
  /// path is allowed to contain qualifiers (.) to traverse sub-elements, as well
  /// as indexers ([x]) to traverse multiple-cardinality sub-elements (see the
  /// [Simple FHIRPath Profile](fhirpath.html#simple) for full details). Note
  /// that the index must be an integer constant. The path must resolve to an
  /// element of type code, Coding, or CodeableConcept.
  final FhirString? path;
  final Element? pathElement;

  /// [searchParam] /// A token parameter that refers to a search parameter defined on the
  /// specified type of the DataRequirement, and which searches on elements of
  /// type code, Coding, or CodeableConcept.
  final FhirString? searchParam;
  final Element? searchParamElement;

  /// [valueSet] /// The valueset for the code filter. The valueSet and code elements are
  /// additive. If valueSet is specified, the filter will return only those data
  /// items for which the value of the code-valued element specified in the path
  /// is a member of the specified valueset.
  final FhirCanonical? valueSet;
  final Element? valueSetElement;

  /// [code] /// The codes for the code filter. If values are given, the filter will return
  /// only those data items for which the code-valued attribute specified by the
  /// path has a value that is one of the specified codes. If codes are specified
  /// in addition to a value set, the filter returns items matching a code in the
  /// value set or one of the specified codes.
  final List<Coding>? code;
  @override
  DataRequirementCodeFilter clone() => throw UnimplementedError();
  DataRequirementCodeFilter copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? path,
    Element? pathElement,
    FhirString? searchParam,
    Element? searchParamElement,
    FhirCanonical? valueSet,
    Element? valueSetElement,
    List<Coding>? code,
  }) {
    return DataRequirementCodeFilter(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      path: path ?? this.path,
      pathElement: pathElement ?? this.pathElement,
      searchParam: searchParam ?? this.searchParam,
      searchParamElement: searchParamElement ?? this.searchParamElement,
      valueSet: valueSet ?? this.valueSet,
      valueSetElement: valueSetElement ?? this.valueSetElement,
      code: code ?? this.code,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [DataRequirementDateFilter] /// Date filters specify additional constraints on the data in terms of the
/// applicable date range for specific elements. Each date filter specifies an
/// additional constraint on the data, i.e. date filters are AND'ed, not OR'ed.
class DataRequirementDateFilter extends Element {
  DataRequirementDateFilter({
    super.id,
    super.extension_,
    this.path,
    this.pathElement,
    this.searchParam,
    this.searchParamElement,
    this.valueDateTime,
    this.valueDateTimeElement,
    this.valuePeriod,
    this.valueDuration,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [path] /// The date-valued attribute of the filter. The specified path SHALL be a
  /// FHIRPath resolveable on the specified type of the DataRequirement, and
  /// SHALL consist only of identifiers, constant indexers, and .resolve(). The
  /// path is allowed to contain qualifiers (.) to traverse sub-elements, as well
  /// as indexers ([x]) to traverse multiple-cardinality sub-elements (see the
  /// [Simple FHIRPath Profile](fhirpath.html#simple) for full details). Note
  /// that the index must be an integer constant. The path must resolve to an
  /// element of type date, dateTime, Period, Schedule, or Timing.
  final FhirString? path;
  final Element? pathElement;

  /// [searchParam] /// A date parameter that refers to a search parameter defined on the specified
  /// type of the DataRequirement, and which searches on elements of type date,
  /// dateTime, Period, Schedule, or Timing.
  final FhirString? searchParam;
  final Element? searchParamElement;

  /// [valueDateTime] /// The value of the filter. If period is specified, the filter will return
  /// only those data items that fall within the bounds determined by the Period,
  /// inclusive of the period boundaries. If dateTime is specified, the filter
  /// will return only those data items that are equal to the specified dateTime.
  /// If a Duration is specified, the filter will return only those data items
  /// that fall within Duration before now.
  final FhirDateTime? valueDateTime;
  final Element? valueDateTimeElement;

  /// [valuePeriod] /// The value of the filter. If period is specified, the filter will return
  /// only those data items that fall within the bounds determined by the Period,
  /// inclusive of the period boundaries. If dateTime is specified, the filter
  /// will return only those data items that are equal to the specified dateTime.
  /// If a Duration is specified, the filter will return only those data items
  /// that fall within Duration before now.
  final Period? valuePeriod;

  /// [valueDuration] /// The value of the filter. If period is specified, the filter will return
  /// only those data items that fall within the bounds determined by the Period,
  /// inclusive of the period boundaries. If dateTime is specified, the filter
  /// will return only those data items that are equal to the specified dateTime.
  /// If a Duration is specified, the filter will return only those data items
  /// that fall within Duration before now.
  final FhirDuration? valueDuration;
  @override
  DataRequirementDateFilter clone() => throw UnimplementedError();
  DataRequirementDateFilter copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? path,
    Element? pathElement,
    FhirString? searchParam,
    Element? searchParamElement,
    FhirDateTime? valueDateTime,
    Element? valueDateTimeElement,
    Period? valuePeriod,
    FhirDuration? valueDuration,
  }) {
    return DataRequirementDateFilter(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      path: path ?? this.path,
      pathElement: pathElement ?? this.pathElement,
      searchParam: searchParam ?? this.searchParam,
      searchParamElement: searchParamElement ?? this.searchParamElement,
      valueDateTime: valueDateTime ?? this.valueDateTime,
      valueDateTimeElement: valueDateTimeElement ?? this.valueDateTimeElement,
      valuePeriod: valuePeriod ?? this.valuePeriod,
      valueDuration: valueDuration ?? this.valueDuration,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [DataRequirementSort] /// Specifies the order of the results to be returned.
class DataRequirementSort extends Element {
  DataRequirementSort({
    super.id,
    super.extension_,
    required this.path,
    this.pathElement,
    required this.direction,
    this.directionElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [path] /// The attribute of the sort. The specified path must be resolvable from the
  /// type of the required data. The path is allowed to contain qualifiers (.) to
  /// traverse sub-elements, as well as indexers ([x]) to traverse
  /// multiple-cardinality sub-elements. Note that the index must be an integer
  /// constant.
  final FhirString path;
  final Element? pathElement;

  /// [direction] /// The direction of the sort, ascending or descending.
  final FhirCode direction;
  final Element? directionElement;
  @override
  DataRequirementSort clone() => throw UnimplementedError();
  DataRequirementSort copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? path,
    Element? pathElement,
    FhirCode? direction,
    Element? directionElement,
  }) {
    return DataRequirementSort(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      path: path ?? this.path,
      pathElement: pathElement ?? this.pathElement,
      direction: direction ?? this.direction,
      directionElement: directionElement ?? this.directionElement,
    );
  }
}
