// Put your code here

int score(String word){
  final wordMap={
    'A, E, I, O, U, L, N, R, S, T': 1,
    'D, G': 2,
    'B, C, M, P': 3,
    'F, H, V, W, Y': 4,
    'K': 5,
    'J, X': 8,
    'Q, Z': 10
  };
  int total=0;

  wordMap.forEach((key,val){
   List<String> char= key.split(',').map((e)=>e.trim().toLowerCase()).toList();
    for(var letter in word.toLowerCase().split('')){
      if(char.contains(letter)){
        total+=val;
      }
    }
  });
  return total;
}

