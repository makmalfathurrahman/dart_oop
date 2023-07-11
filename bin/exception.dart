void main() {
  // try {
  //   Validation.validate("admin", "1");
  // } on ValidationException catch (exception) {
  //   // When program found ValidationException
  //   print("ERROR: ${exception.message}");
  // } on Exception catch (exception) {
  //   // Catch throw Exception()
  //   // Multiple Try Catch
  //   print("ERROR: ${exception.toString()}");
  // } finally {
  //   print("Finish!");
  // }

  // Better use this to catch all Exception() 🡣🡣🡣

  try {
    Validation.validate("", "");
  } catch (exception, stackTrace) {
    print("ERROR: ${exception.toString()}");
    print(stackTrace.toString()); // Use starckTrace to catch the error line
  } finally {
    print("Finish!");
  }
}

class ValidationException implements Exception {
  String message;

  ValidationException(this.message);
}

class Validation {
  static void validate(String username, String password) {
    if (username == "" && password == "") {
      throw ValidationException("username and password is empty");
    } else if (username == "") {
      // throw Exception("username is empty");
      throw ValidationException("username is empty");
    } else if (password == "") {
      // throw Exception("password is empty");
      throw Exception("password is empty");
    } else if (username == "admin" || password == "1234") {
      throw Exception("Login failed!");
    }
  }
}
