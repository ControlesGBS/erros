-- Limpa todas as tratativas e o controle de disparos (só dados de teste, confirmado pelo usuário).
-- NÃO mexe em tratativas_config (configuração de Ativo/Pausado/quantidade continua como está).
-- Rodar no SQL Editor do Supabase do GBS (projeto ndwivbhqglpnfyqwjbzu).

delete from tratativas_disparos;
delete from tratativas;

-- Opcional: só rode a linha abaixo também se quiser limpar o controle de "já disparei
-- pra essa base nos últimos 7 dias" do módulo Velocidade (é uma tabela separada, não é
-- tecnicamente uma "tratativa", mas é do mesmo tipo de dado de teste/throttle):
-- delete from velocidade_disparos;
