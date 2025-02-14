/* Exemplo com função com parametros opcionais*/

void exibiMensagem(String mensagem,[String remetente = "Anonimo"]){
print("Mensagem de $remetente: $mensagem");
}

void main(){
  exibiMensagem("Bem vindo ao curso de Mobile com Flutter");
  exibiMensagem("Bem vindo ao curso de Mobile com Flutter", "Prof. Daniel");
}