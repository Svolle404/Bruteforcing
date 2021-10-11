final char[] characters = {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'æ', 'ø', 'å', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'Æ', 'Ø', 'Å', '.', ':', ',', ';', '!', 32, 39, '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '(', ')', '&'};

encryption encryption;
decryption decryption;
bruteforcing bruteforcing;

void setup() {
  encryption = new encryption();
  decryption = new decryption();
  bruteforcing = new bruteforcing();

  // encryption.run();
  // decryption.run();
  bruteforcing.run(3);

  println("Final time: "+float(millis())/1000.0+" seconds");
  println("------------------------------");
  exit();
}
