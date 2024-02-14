class PolishComparator {
  static const List<String> letters = [
    'a', 'ą', 'b', 'c', 'ć', 'd', 'e', 'ę', 'f', 'g', 'h', 'i',
    'j', 'k', 'l', 'ł', 'm', 'n', 'ń', 'o', 'ó', 'p', 'r', 's',
    'ś', 't', 'u', 'w', 'y', 'z', 'ź', 'ż'
  ];

  static int compare(String a, String b) {
    if (a.length > b.length) {
      //b is shorter
      for(var i = 0; i < b.length; i++) {
        int indexOfA = letters.indexOf(a[i]);
        int indexOfB = letters.indexOf(b[i]);
        if(indexOfA < indexOfB) {
          return -1;
        } else if(indexOfA > indexOfB) {
          return 1;
        }
      }
    } else {
      //a is shorter
      for(var i = 0; i < a.length; i++) {
        int indexOfA = letters.indexOf(a[i]);
        int indexOfB = letters.indexOf(b[i]);
        if(indexOfA < indexOfB) {
          return -1;
        } else if(indexOfA > indexOfB) {
          return 1;
        }
      }
    }
    return 0;
  }
}