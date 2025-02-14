import 'dart:io';
void main(){
  int res=0,n;
  print("Digite o numero que deseja saber a tabuada");
  n = int.parse(stdin.readLineSync()!);

// for(inicia variavel, condiçao, incremento)
  for(int cont =0; cont<11;cont++){
    res = n*cont;
    print("Tabuada do $n");
    print("Res = $n * $cont = $res");
   
    

  }
}