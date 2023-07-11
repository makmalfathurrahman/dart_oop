void main() {
  var number1 = Number("1", "2");
  var number2 = Number("1", "2");

  print(number1 == number2);
  print(number1.hashCode == number2.hashCode);
  print("1: ${number1.hashCode}");
  print("2: ${number2.hashCode}");
}

class Number {
  String data1 = "";
  String data2 = "";

  Number(this.data1, this.data2);

  int get hashCode {
    var result = data1.hashCode;
    result += data2.hashCode;
    return result;
  }

  // Use Equals Operator
  bool operator ==(Object other) {
    if (other is Number) {
      if (data1 != other.data1) {
        return false;
      } else if (data2 != other.data2) {
        return false;
      } else {
        return true;
      }
    } else {
      return false;
    }
  }
}
