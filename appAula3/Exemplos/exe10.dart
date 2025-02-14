/* Exemplo de funçao com parametro nomeado*/



// funçao com paramentro obrigatorio 

void criarUsuario({required String nome, int?idade}){
  print("Usario: $nome, idade $idade");

}

void main(){
  criarUsuario(nome: "Murilo",idade: 19);
}