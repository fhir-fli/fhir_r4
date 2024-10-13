/// Codes for high level media categories.
enum MediaType {
  /// Display: Image
  /// Definition: The media consists of one or more unmoving images, including photographs, computer-generated graphs and charts, and scanned documents
  image,

  /// Display: Video
  /// Definition: The media consists of a series of frames that capture a moving image
  video,

  /// Display: Audio
  /// Definition: The media consists of a sound recording
  audio,
  ;

  @override
  String toString() {
    switch (this) {
      case image:
        return 'image';
      case video:
        return 'video';
      case audio:
        return 'audio';
    }
  }

  /// Returns a [String] from a [MediaType] enum.
  String toJson() => toString();

  /// Returns a [MediaType] from a [String] enum.
  static MediaType fromString(String str) {
    switch (str) {
      case 'image':
        return MediaType.image;
      case 'video':
        return MediaType.video;
      case 'audio':
        return MediaType.audio;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [MediaType] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static MediaType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
