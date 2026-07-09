-- Rodar no SQL Editor do Supabase do GBS (projeto ndwivbhqglpnfyqwjbzu).
-- Guarda o resumo do último upload (quantos erros, quantos disparos, etc.) na uploads_log,
-- pra qualquer gestor/supervisor_geral ver na tela sem precisar pedir print pra quem subiu.

alter table uploads_log add column if not exists detalhe text;
