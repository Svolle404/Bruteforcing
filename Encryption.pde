class encryption {
  String encIn = "De fleste var bygget til at skulle fungere som grav for de daværende faraoer eller deres ægtefæller under det gamle rige og det mellemste rige.";
  String encOut = "";
  String encKey = "Quy";
  int x = 0;

  void run() {
    for (int i = 0; i < encIn.length(); i++) { // For each character in the input.
      for (int j = 0; j < characters.length; j++) { // Check for every character in the array.
        if (encIn.charAt(i) == characters[j]) { // Find index of a character in the input string in the array.
          x = j; // Save index as an integer.
          for (int k = 0; k < characters.length; k++) { // Check for every character in the array.
            if (encKey.charAt(i % encKey.length()) == characters[k]) { // Find index of the matching character in the key.
              encOut += characters[(x+k) % characters.length]; // Add the two indexes together and do modulus to the length of the character array.
            }
          }
        }
      }
    }
    println("------------------------------");
    println("Encryption input: "+encIn);
    println("Encryption key: "+encKey);
    println("Encryption output: "+encOut);
  }
}
