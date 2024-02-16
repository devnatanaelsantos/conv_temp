# Conversor de Temperatura
Aplicativo desenvolvido em Flutter para realizar a conversão de temperaturas entre as escalas Celsius e Fahrenheit.

## Funcionalidades implementadas
Utilizei o **ValueNotifier** e o **ValueListenableBuilder** para implementar funcionalidades que permitem alternar entre as conversões de Celsius e Fahrenheit e para habilitar o botão de conversão apenas quando o campo estiver preenchido. Além disso, utilizei o **try-catch** e o **AlertDialog** para retornar uma mensagem no caso de inserção de uma temperatura incorreta no campo.

### Gerencimento de estado
- ValueNotifier

### Arquitetura
- MVC

### Como utilizar
1. Digite a temperatura desejada no campo fornecido.
2. Alterne entre as escalas de temperatura Celsius e Fahrenheit.
3. Pressione o botão "Converter" para obter o resultado da conversão na outra escala.

### Demonstração
<img src="https://github.com/devnatanaelsantos/readme_imgs/blob/main/conv_temp/gif.gif" width=300 height='650'>

### Layout
<div style="display: flex; justify-content: space-between;">
<img src="https://github.com/devnatanaelsantos/readme_imgs/blob/main/conv_temp/1.png" width=300 height='650'>
<img src="https://github.com/devnatanaelsantos/readme_imgs/blob/main/conv_temp/2.png" width=300 height='650'>
<img src="https://github.com/devnatanaelsantos/readme_imgs/blob/main/conv_temp/4.png" width=300 height='650'>
  <img src="https://github.com/devnatanaelsantos/readme_imgs/blob/main/conv_temp/3.png" width=300 height='650'>
</div>
