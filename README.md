# Tradutor de Código Morse

Este projeto implementa um Autômato Finito Determinístico (AFD) para traduzir código Morse para texto alfanumérico.

## Sobre o Projeto

O Tradutor de Código Morse utiliza o conceito de Autômato Finito Determinístico (AFD) para realizar a conversão de código Morse para caracteres alfanuméricos e alguns símbolos de pontuação. O AFD é implementado em Ruby e possui 48 estados (q0-q47) que representam os diferentes estágios de reconhecimento dos caracteres em código Morse.

## Funcionalidades

- Traduz código Morse para texto alfanumérico (A-Z, 0-9)
- Suporta os símbolos de pontuação: `.`, `-`, `?`, `,`
- Utiliza espaço para separar caracteres e `/` para separar palavras
- Fornece feedback sobre erros na sequência do código Morse

## Como Funciona

O Autômato Finito Determinístico (AFD) percorre a sequência de código Morse e, com base nos símbolos encontrados (`.`, `-`, espaço, `/`), transita entre estados. Cada estado final corresponde a um caractere específico no alfabeto alfanumérico ou de pontuação.

### Mapeamento do Código Morse

O AFD reconhece os seguintes caracteres:

- **Letras**:
  - A: `.-`
  - B: `-...`
  - C: `-.-.`
  - D: `-..`
  - E: `.`
  - F: `..-.`
  - G: `--.`
  - H: `....`
  - I: `..`
  - J: `.---`
  - K: `-.-`
  - L: `.-..`
  - M: `--`
  - N: `-.`
  - O: `---`
  - P: `.--.`
  - Q: `--.-`
  - R: `.-.`
  - S: `...`
  - T: `-`
  - U: `..-`
  - V: `...-`
  - W: `.--`
  - X: `-..-`
  - Y: `-.--`
  - Z: `--..`

- **Números**:
  - 0: `-----`
  - 1: `.----`
  - 2: `..---`
  - 3: `...--`
  - 4: `....-`
  - 5: `.....`
  - 6: `-....`
  - 7: `--...`
  - 8: `---..`
  - 9: `----.`

- **Símbolos**:
  - `.`: `.-.-.-`
  - `-`: `-....-`
  - `?`: `..--..`
  - `,`: `--..--`

## Como Usar

```ruby
# Crie uma instância do AFD passando a string de código Morse
adf = ADF.new("... --- ...")

# Inicie a tradução
adf.iniciar
# Output: Tradução: sos
```

### Exemplo Completo

```ruby
# Exemplo de uso para traduzir "CODIGO MORSE DE EXEMPLO"
adf = ADF.new("-.-. --- -.. .. --. --- / -- --- .-. ... . / -.. . / . -..- . -- .--. .-.. ---")
adf.iniciar
# Output: Tradução: codigo morse de exemplo
```

## Estrutura do Código

- `initialize`: Configura o autômato com a cadeia de código Morse a ser traduzida
- `proximo`: Retorna o próximo caractere da cadeia ou 'f' quando chega ao fim
- `prox_letra`: Adiciona a letra correspondente ao estado atual à palavra de saída
- `iniciar`: Inicia o processamento da cadeia de código Morse

## Tratamento de Erros

O tradutor detecta sequências inválidas de código Morse e fornece mensagens de erro apropriadas, indicando que a sequência pode estar incorreta.

## Requisitos

- Ruby 2.7 ou superior (necessário para suporte à sintaxe pattern matching)

## Limitações

- O tradutor reconhece apenas um conjunto limitado de símbolos de pontuação (`.`, `-`, `?`, `,`)
- Não há suporte para caracteres acentuados ou especiais

## Contribuições

Contribuições são bem-vindas! Sinta-se à vontade para abrir um issue ou enviar um pull request com melhorias.
