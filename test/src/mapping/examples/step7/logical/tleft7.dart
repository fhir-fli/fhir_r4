import 'package:fhir_r4/fhir_r4.dart';

/// [TLeft7]
/// TLeft definition
class TLeft7 extends Element {
  const TLeft7({
    super.id,
    super.extension_,
    this.aa,
    super.disallowExtensions,
    super.objectPath = 'TLeft7',
  });

  /// [aa]
  /// Nested BackboneElement
  final List<TLeft7Aa>? aa;

  @override
  TLeft7 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<TLeft7Aa>? aa,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    return TLeft7(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      aa: aa ?? this.aa,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) json['id'] = id!.value;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (aa != null) {
      json['aa'] = aa!.map((e) => e.toJson()).toList();
    }
    return json;
  }
}

/// Nested Backbone Element
class TLeft7Aa extends BackboneElement {
  const TLeft7Aa({
    super.id,
    super.extension_,
    this.ab,
    super.objectPath = 'TLeft7Aa',
  });

  /// [ab]
  /// String field within the BackboneElement
  final FhirString? ab;

  @override
  TLeft7Aa copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
    FhirString? ab,
  }) {
    return TLeft7Aa(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      ab: ab ?? this.ab,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) json['id'] = id!.value;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (ab != null) json['ab'] = ab!.value;
    return json;
  }
}
