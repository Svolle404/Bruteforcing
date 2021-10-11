class decryption {
  String decIn = "";
  String decOut = "";
  String decKey = "";
  int x = 0;

  void run() {
    for (int i = 0; i < decIn.length(); i++) { // For each character in the input.
      for (int j = 0; j < characters.length; j++) { // Check for every character in the array.
        if (decIn.charAt(i) == characters[j]) { // Find index of a character in the input string in the array.
          x = j; // Save index as an integer.
          for (int k = 0; k < characters.length; k++) { // Check for every character in the array.
            if (decKey.charAt(i % decKey.length()) == characters[k]) { // Find index of the matching character in the key.
              if (x-k < 0) {
                decOut += characters[(x-k+characters.length) % characters.length]; // If x-k < 0, subtract the two indexes from each other, add the length of the array and do modulus to the length of the character array.
              } else {
                decOut += characters[(x-k) % characters.length]; // If x-k >= 0, subtract the two indexes from each other and do modulus to the length of the character array.
              }
            }
          }
        }
      }
    }
    println("------------------------------");
    println("Decryption input: "+decIn);
    println("Decryption key: "+decKey);
    println("Decryption output: "+decOut);
  }
}
