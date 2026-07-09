-- Rodar no SQL Editor do Supabase do GBS (projeto ndwivbhqglpnfyqwjbzu).
-- A tabela erros já está vazia (usuário confirmou), então é seguro criar a constraint direto.
-- Se um dia a tabela tiver dados de novo e isso der erro de "duplicate key", rodar antes:
--   delete from erros a using erros b
--   where a.ctid < b.ctid and a.instalacao=b.instalacao and a.mes_erro=b.mes_erro;

alter table erros
  add constraint erros_instalacao_mes_erro_key unique (instalacao, mes_erro);
