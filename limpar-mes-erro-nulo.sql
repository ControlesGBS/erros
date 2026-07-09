-- Rodar no SQL Editor do Supabase do GBS (projeto ndwivbhqglpnfyqwjbzu).
--
-- Remove registros de erro salvos ANTES da correção do formato "jul/26" (quando o
-- sistema não reconhecia a data e gravava a linha com Mês Erro em branco, em vez de
-- descartar). Isso duplicou instalações: uma linha antiga com Mês Erro nulo e uma
-- linha nova (depois do reupload) com o mês certo (ex: 07/2026).
--
-- O código atual NUNCA MAIS grava uma linha com Mês Erro nulo (se não reconhece o
-- formato, descarta a linha em vez de salvar vazio) — então é seguro apagar TODAS as
-- linhas com mes_erro nulo da tabela inteira, não só as 5 desse upload.

-- 1) Conferir antes de apagar (quantas linhas seriam removidas):
select count(*) from erros where mes_erro is null;

-- 2) Apagar:
delete from erros where mes_erro is null;
