/// This value set includes SNOMED CT codes for materials that specimen containers are made of
enum ContainerMaterials {
  /// Display: glass
  value32039001,

  /// Display: plastic
  value61088005,

  /// Display: metal
  value425620007,
  ;

  @override
  String toString() {
    switch (this) {
      case value32039001:
        return '32039001';
      case value61088005:
        return '61088005';
      case value425620007:
        return '425620007';
    }
  }

  String toJson() => toString();
  static ContainerMaterials fromString(String str) {
    switch (str) {
      case '32039001':
        return ContainerMaterials.value32039001;
      case '61088005':
        return ContainerMaterials.value61088005;
      case '425620007':
        return ContainerMaterials.value425620007;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static ContainerMaterials fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
