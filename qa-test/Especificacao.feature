# language: pt

Funcionalidade: Login do site

  @Sucesso
  Esquema do Cenario: Login com sucesso
    Dado que eu esteja na tela de login
    E que eu possua os dados de login cadastrado no sistema
    E que eu preencha o campo <login> com o <valorValido>
    E que eu preencha o campo SENHA com a <senhaValida>
    Quando eu clicar em ENTRAR
    Entao o deve ser realizado o login do usuario

    Exemplos:
      | login | valorValido     | senhaValida |
      | CPF   | 12345678900     | 123456      |
      | EMAIL | teste@teste.com | 654321      |

  @Erro
  Esquema do Cenario: Login com dados validos, porem nao cadastrados
    Dado que eu esteja na tela de login
    E que eu nao possua os dados de login cadastrado no sistema
    E que eu preencha o campo <login> com o <valorValido>
    E que eu preencha o campo SENHA com a <senhaValida>
    Quando eu clicar em ENTRAR
    Entao deve informar dados nao encontrados ou nao cadastrados

    Exemplos:
      | login | valorValido     | senhaValida |
      | CPF   | 12345678900     | 123456      |
      | EMAIL | teste@teste.com | 654321      |

  @Erro
  Esquema do Cenario: Login com campos vazios
    Dado que eu esteja na tela de login
    E que eu <preenchaLogin> o campo LOGIN com o <valorLogin>
    E que eu <preenchaSenha> o campo SENHA com o <valorSenha>
    Quando eu cliccar em ENTRAR
    Entao deve informar <mensagem>

    Exemplos:
      | preenchaLogin | preenchaSenha | valorLogin  | valorSenha | mensagem                    |
      | nao preencha  | nao preencha  |             |            | usuario e ou senha invalida |
      | preencha      | nao preencha  | 12345678900 |            | senha invalida              |
      | nao preencha  | preencha      |             | 654321     | usuario invalido            |
      | preencha      | preencha      | abcdefghijk | *&¨%$##)+  | usuario e ou senha invalida |

  @Erro
  Esquema do Cenario: Login com campos vazios
    Dado que eu esteja na tela de login
    E que eu preencha o campo LOGIN com o <valorLogin>
    E que eu <preenchaSenha> o campo SENHA com o <valorSenha>
    Quando eu cliccar em ENTRAR
    Entao deve informar <mensagem>

    Exemplos:
      | valorLogin  | valorSenha | mensagem                    |
      | abcdefghijk | *&¨%$##)+  | usuario e ou senha invalida |
      | 12345678900 | *&¨%$##)+  | senha invalida              |
      | abcdefghijk | 123456     | usuario invalido            |



