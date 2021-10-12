class bruteforcing {
  String bruIn = "qk9Oj4&47!xV!xV!tV4ga'41!y(!jV)u&Oy(.rV;k((Bc&ke!yQOL)!x4Oue;46hxV;kgOt45s4(kV.zV oa;kV;kaOx8'z8'kV6E64kQ";
  String bruOut = "";
  String bruGuess = "";
  int x = 0;
  int posKeys = 0;

  int e = 0;
  final int eFreq = 15;

  int r = 0;
  final int rFreq = 5;

  int spaces = 0;
  final int avgWordLength = 8;

  String[] outs = new String[0];
  String[] mostLikely = new String[0];
  String mostLikelyKey = "";

  IntDict charInKey = new IntDict();

  void run(int keyLength) {
    if (keyLength == 4) {
      for (int i = 0; i < characters.length; i++) {
        for (int j = 0; j < characters.length; j++) {
          for (int k = 0; k < characters.length; k++) {
            for (int h = 0; h < characters.length; h++) {
              bruGuess = str(characters[i])+str(characters[j])+str(characters[k])+str(characters[h]);
              e = 0;
              r = 0;
              spaces = 0;
              bruOut = "";
              for (int l = 0; l < bruIn.length(); l++) { // For each character in the input.
                for (int m = 0; m < characters.length; m++) { // Check for every character in the array.
                  if (bruIn.charAt(l) == characters[m]) { // Find index of a character in the input string in the array.
                    x = m; // Save index as an integer.
                    for (int n = 0; n < characters.length; n++) { // Check for every character in the array.
                      if (bruGuess.charAt(l % bruGuess.length()) == characters[n]) { // Find index of the matching character in the key.
                        if (x-n < 0) {
                          bruOut += characters[(x-n+characters.length) % characters.length]; // If x-k < 0, subtract the two indexes from each other, add the length of the array and do modulus to the length of the character array.
                        } else {
                          bruOut += characters[(x-n) % characters.length]; // If x-k >= 0, subtract the two indexes from each other and do modulus to the length of the character array.
                        }
                      }
                    }
                  }
                }
              }
            }

            for (int o = 0; o < bruOut.length(); o++) { // Count the number of e's in the output.
              if (bruOut.charAt(o) == 'e') {
                e ++;
              }
              if (bruOut.charAt(o) == 32) { // Count the number of spaces in the output.
                spaces ++;
              }
              if (bruOut.charAt(o) == 'r') { // Count the number of spaces in the output.
                r ++;
              }
            }

            if ((float(e)/float(bruOut.length()))*100 > eFreq && spaces > float(bruOut.length())/float(avgWordLength) && (float(r)/float(bruOut.length()))*100 > rFreq) {
              outs = expand(outs, outs.length+1);
              outs[outs.length-1] = "Key: "+bruGuess+" - Decryption: "+bruOut;
              posKeys ++;
            }
          }
        }
      }
    }

    if (keyLength == 3) {
      for (int i = 0; i < characters.length; i++) {
        for (int j = 0; j < characters.length; j++) {
          for (int k = 0; k < characters.length; k++) {
            bruGuess = str(characters[i])+str(characters[j])+str(characters[k]);
            e = 0;
            r = 0;
            spaces = 0;
            bruOut = "";
            for (int l = 0; l < bruIn.length(); l++) { // For each character in the input.
              for (int m = 0; m < characters.length; m++) { // Check for every character in the array.
                if (bruIn.charAt(l) == characters[m]) { // Find index of a character in the input string in the array.
                  x = m; // Save index as an integer.
                  for (int n = 0; n < characters.length; n++) { // Check for every character in the array.
                    if (bruGuess.charAt(l % bruGuess.length()) == characters[n]) { // Find index of the matching character in the key.
                      if (x-n < 0) {
                        bruOut += characters[(x-n+characters.length) % characters.length]; // If x-k < 0, subtract the two indexes from each other, add the length of the array and do modulus to the length of the character array.
                      } else {
                        bruOut += characters[(x-n) % characters.length]; // If x-k >= 0, subtract the two indexes from each other and do modulus to the length of the character array.
                      }
                    }
                  }
                }
              }
            }

            for (int o = 0; o < bruOut.length(); o++) { // Count the number of e's in the output.
              if (bruOut.charAt(o) == 'e') {
                e ++;
              }
              if (bruOut.charAt(o) == 32) { // Count the number of spaces in the output.
                spaces ++;
              }
              if (bruOut.charAt(o) == 'r') { // Count the number of spaces in the output.
                r ++;
              }
            }

            if ((float(e)/float(bruOut.length()))*100 > eFreq && spaces > float(bruOut.length())/float(avgWordLength) && (float(r)/float(bruOut.length()))*100 > rFreq) {
              outs = expand(outs, outs.length+1);
              outs[outs.length-1] = "Key: "+bruGuess+" - Decryption: "+bruOut;
              posKeys ++;
            }
          }
        }
      }
    }

    if (keyLength == 2) {
      for (int i = 0; i < characters.length; i++) {
        for (int j = 0; j < characters.length; j++) {
          bruGuess = str(characters[i])+str(characters[j]);
          e = 0;
          r = 0;
          spaces = 0;
          bruOut = "";
          for (int l = 0; l < bruIn.length(); l++) { // For each character in the input.
            for (int m = 0; m < characters.length; m++) { // Check for every character in the array.
              if (bruIn.charAt(l) == characters[m]) { // Find index of a character in the input string in the array.
                x = m; // Save index as an integer.
                for (int n = 0; n < characters.length; n++) { // Check for every character in the array.
                  if (bruGuess.charAt(l % bruGuess.length()) == characters[n]) { // Find index of the matching character in the key.
                    if (x-n < 0) {
                      bruOut += characters[(x-n+characters.length) % characters.length]; // If x-k < 0, subtract the two indexes from each other, add the length of the array and do modulus to the length of the character array.
                    } else {
                      bruOut += characters[(x-n) % characters.length]; // If x-k >= 0, subtract the two indexes from each other and do modulus to the length of the character array.
                    }
                  }
                }
              }
            }
          }

          for (int o = 0; o < bruOut.length(); o++) { // Count the number of e's in the output.
            if (bruOut.charAt(o) == 'e') {
              e ++;
            }
            if (bruOut.charAt(o) == 32) { // Count the number of spaces in the output.
              spaces ++;
            }
            if (bruOut.charAt(o) == 'r') { // Count the number of spaces in the output.
              r ++;
            }
          }

          if ((float(e)/float(bruOut.length()))*100 > eFreq && spaces > float(bruOut.length())/float(avgWordLength) && (float(r)/float(bruOut.length()))*100 > rFreq) {
            outs = expand(outs, outs.length+1);
            outs[outs.length-1] = "Key: "+bruGuess+" - Decryption: "+bruOut;
            posKeys ++;
          }
        }
      }
    }

    if (keyLength == 1) {
      for (int i = 0; i < characters.length; i++) {
        bruGuess = str(characters[i]);
        e = 0;
        r = 0;
        spaces = 0;
        bruOut = "";
        for (int l = 0; l < bruIn.length(); l++) { // For each character in the input.
          for (int m = 0; m < characters.length; m++) { // Check for every character in the array.
            if (bruIn.charAt(l) == characters[m]) { // Find index of a character in the input string in the array.
              x = m; // Save index as an integer.
              for (int n = 0; n < characters.length; n++) { // Check for every character in the array.
                if (bruGuess.charAt(l % bruGuess.length()) == characters[n]) { // Find index of the matching character in the key.
                  if (x-n < 0) {
                    bruOut += characters[(x-n+characters.length) % characters.length]; // If x-k < 0, subtract the two indexes from each other, add the length of the array and do modulus to the length of the character array.
                  } else {
                    bruOut += characters[(x-n) % characters.length]; // If x-k >= 0, subtract the two indexes from each other and do modulus to the length of the character array.
                  }
                }
              }
            }
          }
        }

        for (int o = 0; o < bruOut.length(); o++) { // Count the number of e's in the output.
          if (bruOut.charAt(o) == 'e') {
            e ++;
          }
          if (bruOut.charAt(o) == 32) { // Count the number of spaces in the output.
            spaces ++;
          }
          if (bruOut.charAt(o) == 'r') { // Count the number of spaces in the output.
            r ++;
          }
        }

        if ((float(e)/float(bruOut.length()))*100 > eFreq && spaces > float(bruOut.length())/float(avgWordLength) && (float(r)/float(bruOut.length()))*100 > rFreq) {
          outs = expand(outs, outs.length+1);
          outs[outs.length-1] = "Key: "+bruGuess+" - Decryption: "+bruOut;
          posKeys ++;
        }
      }
    }

    for (int j = 0; j < keyLength; j++) {
      mostLikely = new String[0];
      for (int i = 0; i < posKeys; i++) {
        mostLikely = expand(mostLikely, mostLikely.length+1);
        mostLikely[mostLikely.length-1] = str(outs[i].charAt(5+j));
      }
      mostLikely = sort(mostLikely);
      for (String s : mostLikely) charInKey.increment(s);
      charInKey.sortValuesReverse();
      String[] chars = charInKey.keyArray();
      mostLikelyKey += chars[0];
      charInKey.clear();
    }

    saveStrings("outs.txt", outs);
    println("------------------------------");
    println("Bruteforcing complete");
    if (posKeys == 1) {
      println(posKeys+" possible key found");
    } else {
      println(posKeys+" possible keys found");
    }
    println("");
    for (int i = 0; i < outs.length; i++) {
      println("> "+outs[i]);
      println("");
    }
    println("Most probable key: "+mostLikelyKey);
    println("");
  }
}
