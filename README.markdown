Problema 1 - Caixa Eletrônico
=============================

Problema
--------
Quantas cédulas de cada nota são necessárias para somar uma quantidade *x* de dinheiro de forma que o cliente receba o menor número de cédulas possível? Considere que o caixa dispõe de uma quantidade ilimitada de notas de 2, 5, 10, 20, 50 e 100 reais.

Exemplos
--------
Para R$ 107,00:

    $ ruby caixa_eletronico.rb 107
    Para R$ 107,00:
      1 * R$   2,00
      1 * R$   5,00
      0 * R$  10,00
      0 * R$  50,00
      1 * R$ 100,00

Para R$ 11,00:

    $ ruby caixa_eletronico.rb 11
    Não é possível pagar R$ 11,00.

Testes
------
Os testes devem ser feitos exclusivamente com minitest/test-unit.

Como participar?
----------------
1 .Faça um fork do projeto no Github.
2. Adicione suas modificações e os respectivos testes (você também pode contribuir apenas com testes)
3. Rode os testes e quando tudo estiver passando, envie o código ao Github.
4. Envie um pull request para o projeto.

Se precisar de ajuda, mande um e-mail para frevo-on-rails@googlegroups.com.