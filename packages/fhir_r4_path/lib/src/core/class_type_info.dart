// ignore_for_file: public_member_api_docs, avoid_positional_boolean_parameters

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart';

class ClassTypeInfo extends FhirBase {
  ClassTypeInfo(this.instance);

  final FhirBase instance;
  final String? idBase = null;

  @override
  String get fhirType => 'ClassInfo';

  List<FhirBase> getProperty(String name, bool checkValid) {
    if (name == 'name') {
      return [FhirString(getName())];
    } else if (name == 'namespace') {
      return [FhirString(getNamespace())];
    } else {
      throw PathEngineException('Unknown property $name');
    }
  }

  String getNamespace() {
    if (instance is Resource) {
      return 'FHIR';
    } else if (instance is! Element ||
        ((instance as Element).disallowExtensions ?? false)) {
      return 'System';
    } else {
      return 'FHIR';
    }
  }

  String getName() {
    if (instance is Resource) {
      return instance.fhirType;
    } else if (instance is! Element ||
        ((instance as Element).disallowExtensions ?? false)) {
      return instance.fhirType.capitalize()!;
    } else {
      return instance.fhirType;
    }
  }

  @override
  FhirBase clone() {
    return ClassTypeInfo(instance);
  }

  @override
  List<FhirBase> getChildrenByName(String name, [bool checkValid = false]) {
    if (name == 'name') {
      return [FhirString(getName())];
    } else if (name == 'namespace') {
      return [FhirString(getNamespace())];
    }
    return [];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'name': getName(),
      'namespace': getNamespace(),
    };
  }

  @override
  $FhirBaseCopyWith<FhirBase> get copyWith => throw UnimplementedError();
}
