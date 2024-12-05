// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4/src/fhir_path/java/fhir_path_utilities.dart';

/// Represents class type information.
class ClassTypeInfo extends FhirBase {
  /// Constructor
  ClassTypeInfo(this.instance);

  /// Fhirbase Instance
  final FhirBase instance;

  @override
  String get fhirType => 'ClassInfo';

  /// Returns the type of the instance.
  String? getIdBase() => null;

  /// Sets the type of the instance.
  void setIdBase(String? value) {}

  /// Returns the type of the instance.
  List<FhirBase>? getProperty(
    int hash,
    String name,
    // ignore: avoid_positional_boolean_parameters
    bool checkValid,
  ) {
    if (name == 'name') {
      return [FhirString(_getName())];
    } else if (name == 'namespace') {
      return [FhirString(_getNamespace())];
    } else {
      // TODO(Dokotela): use the map to walk through
      throw UnimplementedError();
      // return super.getProperty(hash, name, checkValid);
    }
  }

  String _getNamespace() {
    if (instance is Resource) {
      return 'FHIR';
    } else if (instance is! Element ||
        (instance as Element).disallowExtensions) {
      return 'System';
    } else {
      return 'FHIR';
    }
  }

  String? _getName() {
    if (instance is Resource) {
      return instance.fhirType;
    } else if (instance is! Element ||
        (instance as Element).disallowExtensions) {
      return FhirPathUtilities.capitalize(instance.fhirType);
    } else {
      return instance.fhirType;
    }
  }

  FhirBase copy() {
    throw UnimplementedError('Not Implemented');
  }

  @override
  FhirBase clone() {
    throw UnimplementedError();
  }

  @override
  FhirBase copyWith({
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    throw UnimplementedError();
  }
}

/// Represents details of a function.
class FunctionDetails {
  /// Constructor
  FunctionDetails(this.description, this.minParameters, this.maxParameters);

  /// String description of the function.
  final String description;

  /// Minimum number of parameters.
  final int minParameters;

  /// Maximum number of parameters.
  final int maxParameters;
}

/// Represents a FHIR constant.
class FHIRConstant extends FhirBase {
  /// Constructor
  FHIRConstant(this.value);

  /// The value of the constant.
  final String value;

  @override
  String get fhirType => '%constant';

  /// Returns the value of the constant.
  String? getIdBase() => null;

  /// Sets the value of the constant.
  void setIdBase(String? value) {}

  /// Returns the value of the constant.
  String getValue() => value;

  @override
  String? primitiveValue() => value;

  /// Returns the value of the constant.
  FhirBase copy() {
    throw UnimplementedError('Not Implemented');
  }

  /// Returns the value of the constant.
  @override
  FhirBase clone() {
    throw UnimplementedError();
  }

  @override
  FhirBase copyWith({
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    throw UnimplementedError();
  }
}

/// Represents a typed element definition.
class TypedElementDefinition {
  /// Constructor
  TypedElementDefinition(this.src, this.element, this.type);

  /// Named constructor
  TypedElementDefinition.fromElement(this.element)
      : src = null,
        type = null;

  /// Constructor
  final ElementDefinition element;

  /// String type.
  final String? type;

  /// Structure definition.
  final StructureDefinition? src;

  List<ElementDefinitionType> getTypes() {
    final res = <ElementDefinitionType>[];
    for (final tr in element.type ?? <ElementDefinitionType>[]) {
      if (type == null || type == tr.code.toString()) {
        res.add(tr);
      }
    }
    return res;
  }

  /// Returns true if the type is present.
  bool hasType(String tn) {
    if (type != null) {
      return tn == type;
    } else {
      for (final t in element.type ?? <ElementDefinitionType>[]) {
        if (tn == t.code.toString()) {
          return true;
        }
      }
      return false;
    }
  }
}
