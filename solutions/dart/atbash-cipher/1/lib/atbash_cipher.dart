class AtbashCipher {
  String encode(String word) { 
    List<String> plain = [
      'a','b','c','d','e','f','g','h','i','j','k','l','m',
      'n','o','p','q','r','s','t','u','v','w','x','y','z'
    ];
    List<String> chars = plain.reversed.toList();
    String res = '';
    int count = 0;

    for (var letter in word.toLowerCase().split('')) {
      if (plain.contains(letter)) {
        int index = plain.indexOf(letter);
        res += chars[index];
        count++;
      } else if (RegExp(r'\d').hasMatch(letter)) {
        res += letter;
        count++;
      } else {
        continue; // ignore symbols
      }

      if (count % 5 == 0) {
        res += ' ';
      }
    }

    return res.trimRight(); // remove last space if exists
  }

  String decode(String word) { 
    List<String> cipher = [
      'a','b','c','d','e','f','g','h','i','j','k','l','m',
      'n','o','p','q','r','s','t','u','v','w','x','y','z'
    ];
    List<String> chars = cipher.reversed.toList();
    String res = '';

    for (var letter in word.toLowerCase().replaceAll(' ', '').split('')) {
      if (cipher.contains(letter)) {
        int index = cipher.indexOf(letter);
        res += chars[index];
      } else if (RegExp(r'\d').hasMatch(letter)) {
        res += letter;
      }
    }

    return res;
  }
}
