import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [ParameterDefinition] /// The parameters to the module. This collection specifies both the input and
/// output parameters. Input parameters are provided by the caller as part of
/// the $evaluate operation. Output parameters are included in the
/// GuidanceResponse.
class ParameterDefinition extends DataType {
  ParameterDefinition({
    super.id,
    super.extension_,
    this.name,
    this.nameElement,
    required this.use,
    this.useElement,
    this.min,
    this.minElement,
    this.max,
    this.maxElement,
    this.documentation,
    this.documentationElement,
    required this.type,
    this.typeElement,
    this.profile,
    this.profileElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [name] /// The name of the parameter used to allow access to the value of the
  /// parameter in evaluation contexts.
  final FhirCode? name;
  final Element? nameElement;

  /// [use] /// Whether the parameter is input or output for the module.
  final FhirCode use;
  final Element? useElement;

  /// [min] /// The minimum number of times this parameter SHALL appear in the request or
  /// response.
  final FhirInteger? min;
  final Element? minElement;

  /// [max] /// The maximum number of times this element is permitted to appear in the
  /// request or response.
  final FhirString? max;
  final Element? maxElement;

  /// [documentation] /// A brief discussion of what the parameter is for and how it is used by the
  /// module.
  final FhirString? documentation;
  final Element? documentationElement;

  /// [type] /// The type of the parameter.
  final FhirCode type;
  final Element? typeElement;

  /// [profile] /// If specified, this indicates a profile that the input data must conform to,
  /// or that the output data will conform to.
  final FhirCanonical? profile;
  final Element? profileElement;
  @override
  ParameterDefinition clone() => throw UnimplementedError();
  ParameterDefinition copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirCode? name,
    Element? nameElement,
    FhirCode? use,
    Element? useElement,
    FhirInteger? min,
    Element? minElement,
    FhirString? max,
    Element? maxElement,
    FhirString? documentation,
    Element? documentationElement,
    FhirCode? type,
    Element? typeElement,
    FhirCanonical? profile,
    Element? profileElement,
  }) {
    return ParameterDefinition(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      use: use ?? this.use,
      useElement: useElement ?? this.useElement,
      min: min ?? this.min,
      minElement: minElement ?? this.minElement,
      max: max ?? this.max,
      maxElement: maxElement ?? this.maxElement,
      documentation: documentation ?? this.documentation,
      documentationElement: documentationElement ?? this.documentationElement,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      profile: profile ?? this.profile,
      profileElement: profileElement ?? this.profileElement,
    );
  }
}
