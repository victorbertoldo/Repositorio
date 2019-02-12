-- Carga tempo simples 
 insert into dim_tempo
	select
		to_char(datum, 'yyyymmdd')::int as sk_tempo,
		datum as data_completa,
		extract(year from datum) as nr_ano,
		extract(month from datum) as nr_mes,
		to_char(datum, 'TMmonth') as nm_mes,
		extract(day from datum) as nr_dia_mes,
		to_char(datum, 'TMday') as nm_dia_semana,
		current_timestamp as etl_dt_inicio		
		select '2010-01-01'::date + sequence.day as datum
		from generate_series(0,3652) as sequence(day)
		group by sequence.day
	     ) dq
	order by 1;
	
	
select * from dim_tempo;	
	
-- Atualiza NM_MES
UPDATE dim_tempo SET nm_mes='Janeiro' WHERE nm_mes='january';
UPDATE dim_tempo SET nm_mes='Fevereiro' WHERE nm_mes='february';
UPDATE dim_tempo SET nm_mes='Marco' WHERE nm_mes='march';
UPDATE dim_tempo SET nm_mes='Abril' WHERE nm_mes='april';
UPDATE dim_tempo SET nm_mes='Maio' WHERE nm_mes='may';
UPDATE dim_tempo SET nm_mes='Junho' WHERE nm_mes='june';
UPDATE dim_tempo SET nm_mes='Julho' WHERE nm_mes='july';
UPDATE dim_tempo SET nm_mes='Agosto' WHERE nm_mes='august';
UPDATE dim_tempo SET nm_mes='Setembro' WHERE nm_mes='september';
UPDATE dim_tempo SET nm_mes='Outubro' WHERE nm_mes='october';
UPDATE dim_tempo SET nm_mes='Novembro' WHERE nm_mes='november';
UPDATE dim_tempo SET nm_mes='Dezembro' WHERE nm_mes='december';


-- Atualiza NM_DIA_SEMANA
UPDATE dim_tempo SET nm_semana='Segunda-feira' WHERE nm_semana='monday';
UPDATE dim_tempo SET nm_semana='Terca-feira' WHERE nm_semana='tuesday';
UPDATE dim_tempo SET nm_semana='Quarta-feira' WHERE nm_semana='wednesday';
UPDATE dim_tempo SET nm_semana='Quinta-feira' WHERE nm_semana='thursday';
UPDATE dim_tempo SET nm_semana='Sexta-feira' WHERE nm_semana='friday';
UPDATE dim_tempo SET nm_semana='Sabado' WHERE nm_semana='saturday';
UPDATE dim_tempo SET nm_semana='Domingo' WHERE nm_semana='sunday';



select * from dim_tempo;