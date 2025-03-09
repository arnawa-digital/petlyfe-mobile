class AdoptionValidator {
  /// Validator untuk memastikan input tidak kosong.
  static String? validateRequired(String? value, String fieldName) {
    if (value == null || value.trim().isEmpty) {
      return "$fieldName tidak boleh kosong";
    }
    return null;
  }

  /// Validator untuk URL yang valid.
  static String? validateUrl(String? value) {
    if (value == null || value.trim().isEmpty) {
      return "URL tidak boleh kosong";
    }
    final urlPattern =
        r'^(https?:\/\/)?(www\.)?[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b([-a-zA-Z0-9()@:%_\+.~#?&//=]*)$';
    final regExp = RegExp(urlPattern);

    if (!regExp.hasMatch(value)) {
      return "Masukkan URL yang valid";
    }
    return null;
  }

  /// Validator untuk memastikan alamat tidak terlalu pendek.
  static String? validateAddress(String? value) {
    if (value == null || value.trim().isEmpty) {
      return "Alamat tidak boleh kosong";
    }
    if (value.length < 10) {
      return "Alamat terlalu pendek, minimal 10 karakter";
    }
    return null;
  }
}
