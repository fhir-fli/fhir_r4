/// This value set includes a smattering of FDI tooth surface codes.
enum SurfaceCodes {
  /// Display: Mesial
  /// Definition: The surface of a tooth that is closest to the midline (middle) of the face.
  M,

  /// Display: Occlusal
  /// Definition: The chewing surface of posterior teeth.
  O,

  /// Display: Incisal
  /// Definition: The biting edge of anterior teeth.
  I,

  /// Display: Distal
  /// Definition: The surface of a tooth that faces away from the midline of the face.
  D,

  /// Display: Buccal
  /// Definition: The surface of a posterior tooth facing the cheeks.
  B,

  /// Display: Ventral
  /// Definition: The surface of a tooth facing the lips.
  V,

  /// Display: Lingual
  /// Definition: The surface of a tooth facing the tongue.
  L,

  /// Display: Mesioclusal
  /// Definition: The Mesioclusal surfaces of a tooth.
  MO,

  /// Display: Distoclusal
  /// Definition: The Distoclusal surfaces of a tooth.
  DO,

  /// Display: Distoincisal
  /// Definition: The Distoincisal surfaces of a tooth.
  DI,

  /// Display: Mesioclusodistal
  /// Definition: The Mesioclusodistal surfaces of a tooth.
  MOD,
  ;

  @override
  String toString() {
    switch (this) {
      case M:
        return 'M';
      case O:
        return 'O';
      case I:
        return 'I';
      case D:
        return 'D';
      case B:
        return 'B';
      case V:
        return 'V';
      case L:
        return 'L';
      case MO:
        return 'MO';
      case DO:
        return 'DO';
      case DI:
        return 'DI';
      case MOD:
        return 'MOD';
    }
  }

  /// Returns a [String] from a [SurfaceCodes] enum.
  String toJson() => toString();

  /// Returns a [SurfaceCodes] from a [String] enum.
  static SurfaceCodes fromString(String str) {
    switch (str) {
      case 'M':
        return SurfaceCodes.M;
      case 'O':
        return SurfaceCodes.O;
      case 'I':
        return SurfaceCodes.I;
      case 'D':
        return SurfaceCodes.D;
      case 'B':
        return SurfaceCodes.B;
      case 'V':
        return SurfaceCodes.V;
      case 'L':
        return SurfaceCodes.L;
      case 'MO':
        return SurfaceCodes.MO;
      case 'DO':
        return SurfaceCodes.DO;
      case 'DI':
        return SurfaceCodes.DI;
      case 'MOD':
        return SurfaceCodes.MOD;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [SurfaceCodes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static SurfaceCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
