.mode columns
.headers on
.nullvalue NULL

-- Qual o condutor, que também é utilizador, com maior discrepância de pontuações

SELECT nome,
       Max(Abs(avaliacao_condutor - avaliacao_passageiro))
       "Maior diferença de avaliação"
FROM   avaliacao,
       condutor,
       utilizador
WHERE  avaliacao.utilizador = utilizador.numero_up
       AND utilizador.numero_up = condutor.numero_up;
