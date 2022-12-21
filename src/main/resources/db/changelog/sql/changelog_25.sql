--liquibase formatted sql

--changeset herronrb:espanol_1

update tbl_indicator_categories set name_es = 'Cívica y Social' where id_ = 1;
update tbl_indicator_categories set name_es = 'Justicia Penal' where id_ = 2;
update tbl_indicator_categories set name_es = 'Demográfica' where id_ = 3;
update tbl_indicator_categories set name_es = 'Económico' where id_ = 4;
update tbl_indicator_categories set name_es = 'Educación' where id_ = 5;
update tbl_indicator_categories set name_es = 'Ambiente' where id_ = 6;
update tbl_indicator_categories set name_es = 'Salud' where id_ = 7;
update tbl_indicator_categories set name_es = 'Vivienda' where id_ = 8;
update tbl_indicator_categories set name_es = 'Grupo Etario' where id_ = 9;
update tbl_indicator_categories set name_es = 'Raza/Etnia' where id_ = 10;
update tbl_indicator_categories set name_es = 'Sexo' where id_ = 11;


update tbl_indicators
set name_es = 'Índice de respuesta en el Censo 2020',
	description_es = '<p><span class="font-weight-bold">Definición: </span>El número de personas que respondieron la encuesta dividido por el número de personas en la muestra. Esto también se conoce como índice de terminación.</p><p><span class="font-weight-bold">Notas sobre la Información: </span>El 99.8% de todas las unidades habitacionales y direcciones a nivel nacional fue contabilizado en el Censo 2020, según la Oficina del Censo de Estados Unidos (USCB, por sus siglas en inglés). Los porcentajes estimados que se presentan son los declarados (ver Fuentes de Información). Los márgenes de error asociados con cada estimación son reportados como límites altos o bajos. Las siguientes clasificaciones especiales son definidas y valuadas como:<ul><li>0.0 - la información está disponible y el porcentaje es menor a 0.1; valuado como 0.0</li></ul></p><p><span class="font-weight-bold">Fuente de Información: </span>Nación, Estado y Condado - Oficina del Censo de Estados Unidos (USCB, por sus siglas en inglés), 2020</p>'
where id_ = 1; -- "2020 Census response rate"


update tbl_indicators
set name_es = 'Registro Electoral',
	description_es = '<p><span class="font-weight-bold">Definición: </span>El porcentaje de ciudadanos que ha completado el proceso de registro con funcionarios electorales para ser elegibles para votar.</p><p><span class="font-weight-bold">Notas sobre la Información: </span>Los porcentajes estimados que se presentan son los declarados (ver Fuentes de Información). Las siguientes clasificaciones especiales son definidas y valuadas como:<ul><li>0.0 - la información está disponible y el porcentaje es menor a 0.1; valuado como 0.0</li></ul></p><p><span class="font-weight-bold">Fuente de Información: </span>Elecciones del Condado de Bexar</p>'
where id_ = 3; -- "Voter registration"

update tbl_indicators
set name_es = 'Respuesta Electoral',
	description_es = '<p><span class="font-weight-bold">Definición: </span>El porcentaje de votantes registrados que han emitido un voto en una elección.</p><p><span class="font-weight-bold">Notas sobre la Información: </span>Los porcentajes estimados que se presentan son los declarados (ver Fuentes de Información). Los márgenes de error asociados con cada estimación son reportados como límites altos o bajos. Las siguientes clasificaciones especiales son definidas y valuadas como: <ul><li>0.0 - la información está disponible y el porcentaje es menor a 0.1; valuado como 0.0</li></ul></p><p><span class="font-weight-bold">Fuente de Información: </span>Elecciones del Condado de Bexar</p>'
where id_ = 4; -- "Voter turnout"

update tbl_indicators
set name_es = 'Menores de 5',
	 description_es = '<p><span class="font-weight-bold">Definición: </span>El porcentaje de personas que tienen menos de 5 años.</p><p><span class="font-weight-bold">Notas sobre la Información: </span>Los porcentajes estimados que se presentan son los declarados (ver Fuentes de Información). Los márgenes de error asociados con cada estimación son reportados como límites altos o bajos. Las siguientes clasificaciones especiales son definidas y valuadas como:<ul><li>0.0 - la información está disponible y el porcentaje es menor a 0.1; valuado como 0.0</li></ul></p><p><span class="font-weight-bold">Fuente de Información: </span>Estimaciones de 5 años según la Encuesta sobre la Comunidad Estadounidense de la Oficina del Censo (USCB ACS, por sus siglas en inglés), B01001</p>'
where id_ = 21; -- "Under 5"

update tbl_indicators
set name_es = 'de 5 a 17',
	description_es = '<p><span class="font-weight-bold">Definición: </span>El porcentaje de personas que tienen entre 5 y 17 años. Este grupo etario incluye a aquellos que tienen 5 o 17 años.</p><p><span class="font-weight-bold">Notas sobre la Información: </span>Los porcentajes estimados que se presentan son los declarados (ver Fuentes de Información). Los márgenes de error asociados con cada estimación son reportados como límites altos o bajos. Las siguientes clasificaciones especiales son definidas y valuadas como: <ul><li>0.0 - la información está disponible y el porcentaje es menor a 0.1; valuado como 0.0</li></ul></p><p><span class="font-weight-bold">Fuente de Información: </span>Estimaciones de 5 años según la Encuesta sobre la Comunidad Estadounidense de la Oficina del Censo (USCB ACS, por sus siglas en inglés), B01001</p>'
where id_ = 22; -- "5 to 17"

update tbl_indicators
set name_es = 'de 18 a 34',
	description_es = '<p><span class="font-weight-bold">Definición: </span>El porcentaje de personas que tienen entre 18 y 34 años. Este grupo etario incluye a aquellos que tienen 18 o 34 años.</p><p><span class="font-weight-bold">Notas sobre la Información: </span>Los porcentajes estimados que se presentan son los declarados (ver Fuentes de Información). Los márgenes de error asociados con cada estimación son reportados como límites altos o bajos. Las siguientes clasificaciones especiales son definidas y valuadas como: <ul><li>0.0 - la información está disponible y el porcentaje es menor a 0.1; valuado como 0.0</li></ul></p><p><span class="font-weight-bold">Fuente de Información: </span>Estimaciones de 5 años según la Encuesta sobre la Comunidad Estadounidense de la Oficina del Censo (USCB ACS, por sus siglas en inglés), B01001</p>'
where id_ = 23; -- "18 to 34"

update tbl_indicators
set name_es = 'de 35 a 64',
	description_es = '<p><span class="font-weight-bold">Definición: </span>El porcentaje de personas que tienen entre 35 y 64 años. Este grupo etario incluye a aquellos que tienen 35 o 64 años.</p><p><span class="font-weight-bold">Notas sobre la Información: </span>Los porcentajes estimados que se presentan son los declarados (ver Fuentes de Información). Los márgenes de error asociados con cada estimación son reportados como límites altos o bajos. Las siguientes clasificaciones especiales son definidas y valuadas como: <ul><li>0.0 - la información está disponible y el porcentaje es menor a 0.1; valuado como 0.0</li></ul></p><p><span class="font-weight-bold">Fuente de Información: </span>Estimaciones de 5 años según la Encuesta sobre la Comunidad Estadounidense de la Oficina del Censo (USCB ACS, por sus siglas en inglés), B01001</p>'
where id_ = 24; -- "35 to 64"

update tbl_indicators
set name_es = 'de 65 y Mayores',
	description_es = '<p><span class="font-weight-bold">Definición: </span>El porcentaje de personas que tienen 65 años o más. Este grupo etario incluye a aquellos que tienen 65.</p><p><span class="font-weight-bold">Notas sobre la Información: </span>Los porcentajes estimados que se presentan son los declarados (ver Fuentes de Información). Los márgenes de error asociados con cada estimación son reportados como límites altos o bajos. Las siguientes clasificaciones especiales son definidas y valuadas como: <ul><li>0.0 - la información está disponible y el porcentaje es menor a 0.1; valuado como 0.0</li></ul></p><p><span class="font-weight-bold">Fuente de Información: </span>Estimaciones de 5 años según la Encuesta sobre la Comunidad Estadounidense de la Oficina del Censo (USCB ACS, por sus siglas en inglés), B01001</p>'
where id_ = 25; -- "65 and Older"

update tbl_indicators
set name_es = 'Hogares que son Multigeneracionales',
	description_es = '<p><span class="font-weight-bold">Definición: </span>La Oficina del Censo (CB, por sus siglas en inglés) identifica hogares multigeneracionales a través de la relación con la cabeza de familia. La presencia de una de las siguientes combinaciones hizo que el hogar fuera codificado como multigeneracional.<ol><li>cabeza de familia, hijo/a de cabeza de familia y nieto/a de cabeza de familia</li><li>padre/madre de cabeza de familia, cabeza de familia e hijo/a de cabeza de familia</li><li>suegro/a de cabeza de familia, cabeza de familia e hijo/a de cabeza de familia</li></ol></p><p><span class="font-weight-bold">Notas sobre la Información: </span>Los porcentajes estimados que se presentan son los declarados (ver Fuentes de Información). Los márgenes de error asociados con cada estimación son reportados como límites altos o bajos. Las siguientes clasificaciones especiales son definidas y valuadas como:<ul><li>0.0 - la información está disponible y el porcentaje es menor a 0.1; valuado como 0.0</li></ul></p><p><span class="font-weight-bold">Fuente de Información: </span>Estimaciones de 5 años según la Encuesta sobre la Comunidad Estadounidense de la Oficina del Censo (USCB ACS, por sus siglas en inglés), B11017</p>'
where id_ = 28; -- "Households that are multigenerational"

update tbl_indicators
set name_es = 'Cambio de la Población en 10 Años',
	description_es = '<p><span class="font-weight-bold">Definición: </span>El porcentaje de cambio en la población entre el Censo Decenal de 2010 y el de 2020.</p><p><span class="font-weight-bold">Notas sobre la Información: </span>Los porcentajes estimados que se presentan son los declarados (ver Fuentes de Información). Los márgenes de error asociados con cada estimación son reportados como límites altos o bajos. Las siguientes clasificaciones especiales son definidas y valuadas como:<ul><li>0.0 - la información está disponible y el porcentaje es menor a 0.1; valuado como 0.0</li></ul></p><p><span class="font-weight-bold">Fuente de Información: </span>Censo Decenal de la Oficina del Censo (CB, por sus siglas en inglés) 2010-2020</p>'
where id_ = 27; -- "Increase in population in past 10 years"

update tbl_indicators
set name_es = 'Dominio Limitado del Inglés',
	description_es = '<p><span class="font-weight-bold">Definición: </span>El porcentaje de hogares en los cuales ningún miembro de 14 años o más habla solo inglés o habla algún idioma que no sea inglés y habla inglés "muy bien". En otras palabras, todos los miembros de 14 años o más tienen al menos alguna dificultad con el inglés. Para obtener más información: <a target="_blank" href="https://www.census.gov/library/visualizations/2017/comm/english-speaking.html">https://www.census.gov/library/visualizations/2017/comm/english-speaking.html</a></p><p><span class="font-weight-bold">Notas sobre la Información: </span>Los porcentajes estimados que se presentan son los declarados (ver Fuentes de Información). Los márgenes de error asociados con cada estimación son reportados como límites altos o bajos. Las siguientes clasificaciones especiales son definidas y valuadas como: <ul><li>0.0 - la información está disponible y el porcentaje es menor a 0.1; valuado como 0.0</li></ul></p><p><span class="font-weight-bold">Fuente de Información: </span>Estimaciones de 5 años según la Encuesta sobre la Comunidad Estadounidense de la Oficina del Censo (USCB ACS, por sus siglas en inglés), B16002</p>'
where id_ = 26; -- "Limited English proficiency"

update tbl_indicators
set name_es = 'Indígena Americano o Nativo de Alaska (no hispano)',
	description_es = '<p><span class="font-weight-bold">Definición: </span>El porcentaje de personas que reportan ser Indígenas Americanos/as o Nativos/as de Alaska (AIAN, por sus siglas en inglés), pero no son de etnia hispana. AIAN se refiere a una persona que es descendiente de alguno de los pueblos originarios de América del Norte y América del Sur (incluyendo América Central) y que mantiene afiliación tribal o vínculo con la comunidad. Esta categoría incluye a las personas que indican que su raza es "Indígena Americano o Nativo de Alaska" o reportan entradas como Navajo, Pies Negros, Iñupiat, Yup''ik o grupos Indígenas Centroamericanos o grupos Indígenas Sudamericanos. Para obtener más información: <a target="_blank" href="https://www.census.gov/quickfacts/fact/note/US/RHI625221">https://www.census.gov/quickfacts/fact/note/US/RHI625221</a></p><p><span class="font-weight-bold">Notas sobre la Información: </span>Los porcentajes estimados que se presentan son los declarados (ver Fuentes de Información). Los márgenes de error asociados con cada estimación son reportados como límites altos o bajos. Las siguientes clasificaciones especiales son definidas y valuadas como:<ul><li>0.0 - la información está disponible y el porcentaje es menor a 0.1; valuado como 0.0</li></ul></p><p><span class="font-weight-bold">Fuente de Información: </span>Estimaciones de 5 años según la Encuesta sobre la Comunidad Estadounidense de la Oficina del Censo (USCB ACS, por sus siglas en inglés), B03002</p>'
where id_ = 29; -- "American Indian or Alaska Native (non-Hispanic)"

update tbl_indicators
set name_es = 'Asiático (no hispano)',
	description_es = '<p><span class="font-weight-bold">Definición: </span>El porcentaje de personas que reportan ser asiáticos/as, pero no son de etnia hispana. Asiático/a se refiere a una persona que es descendiente de pueblos originarios del Extremo Oriente, Sudeste Asiático o del subcontinente indio, incluyendo, por ejemplo, Camboya, China, India, Japón, Corea, Malasia, Pakistán, Filipinas, Tailandia y Vietnam. Esto incluye a personas que reportaron categorías asiáticas detalladas como: "indio-asiático", "chino", "filipino", "coreano", "japonés", "vietnamita" y "otros orígenes asiáticos" o dieron otras respuestas detalladas sobre su origen asiático. Para obtener más información: <a target="_blank" href="https://www.census.gov/quickfacts/fact/note/US/RHI625221">https://www.census.gov/quickfacts/fact/note/US/RHI625221</a></p><p><span class="font-weight-bold">Notas sobre la Información: </span>Los porcentajes estimados que se presentan son los declarados (ver Fuentes de Información). Los márgenes de error asociados con cada estimación son reportados como límites altos o bajos. Las siguientes clasificaciones especiales son definidas y valuadas como:<ul><li>0.0 - la información está disponible y el porcentaje es menor a 0.1; valuado como 0.0</li></ul></p><p><span class="font-weight-bold">Fuente de Información: </span>Estimaciones de 5 años según la Encuesta sobre la Comunidad Estadounidense de la Oficina del Censo (USCB ACS, por sus siglas en inglés), B03002</p>'
where id_ = 30; -- "Asian (non-Hispanic)"

update tbl_indicators
set name_es = 'Negro o Afroamericano (no hispano)',
	description_es = '<p><span class="font-weight-bold">Definición: </span>El porcentaje de personas que reportan ser negros o afroamericanos, pero no son de etnia hispana. Negro/a o afroamericano/a se refiere a una persona que es descendiente de cualquier grupo racial negro de África. Esto incluye a personas que indican que su raza es "negra o afroamericana" o incluyen entradas como afroamericano, keniano, nigeriano o haitiano. Para obtener más información: <a target="_blank" href="https://www.census.gov/quickfacts/fact/note/US/RHI625221">https://www.census.gov/quickfacts/fact/note/US/RHI625221</a></p><p><span class="font-weight-bold">Notas sobre la Información: </span>Los porcentajes estimados que se presentan son los declarados (ver Fuentes de Información). Los márgenes de error asociados con cada estimación son reportados como límites altos o bajos. Las siguientes clasificaciones especiales son definidas y valuadas como:<ul><li>0.0 - la información está disponible y el porcentaje es menor a 0.1; valuado como 0.0</li></ul></p><p><span class="font-weight-bold">Fuente de Información: </span>Estimaciones de 5 años según la Encuesta sobre la Comunidad Estadounidense de la Oficina del Censo (USCB ACS, por sus siglas en inglés), B03002</p>'
where id_ = 31; -- "Black or African American (non-Hispanic)"

update tbl_indicators
set name_es = 'Hispano o Latino',
	description_es = '<p><span class="font-weight-bold">Definición: </span>El porcentaje de personas que reportan ser de etnia hispana o latina, independientemente de su raza. Hispano o latino se refiere a personas de cultura u origen cubano, mexicano, puertorriqueño, sudamericano o centroamericano, o personas de otra cultura u origen español, independientemente de la raza. Para obtener más información: <a target="_blank" href="https://www.census.gov/quickfacts/fact/note/US/RHI625221">https://www.census.gov/quickfacts/fact/note/US/RHI625221</a></p><p><span class="font-weight-bold">Notas sobre la Información: </span>Los porcentajes estimados que se presentan son los declarados (ver Fuentes de Información). Los márgenes de error asociados con cada estimación son reportados como límites altos o bajos. Las siguientes clasificaciones especiales son definidas y valuadas como:<ul><li>0.0 - la información está disponible y el porcentaje es menor a 0.1; valuado como 0.0</li></ul></p><p><span class="font-weight-bold">Fuente de Información: </span>Estimaciones de 5 años según la Encuesta sobre la Comunidad Estadounidense de la Oficina del Censo (USCB ACS, por sus siglas en inglés), B03002</p>'
where id_ = 32; -- "Hispanic or Latino"

update tbl_indicators
set name_es = 'Nativo de Hawái y Otras Islas del Pacífico (no hispano)',
	description_es = '<p><span class="font-weight-bold">Definición: </span>El porcentaje de personas que reportan ser nativos hawaianos o de otras islas del Pacífico (NHPI, por sus siglas en inglés), pero no son de etnia hispana. NHPI se refiere a una persona que es descendiente de cualquiera de los pueblos originarios de Hawái, Guam, Samoa u otras islas del Pacífico. Esto incluye a personas que indican que son de raza "fiyiana", "guameños o chamorros", "marshalés", "nativo hawaiano", "samoano", "tongano" y "de otras islas del Pacífico" o dieron otras respuestas detalladas sobre su origen como isleños/as del Pacífico. Para obtener más información: <a target="_blank" href="https://www.census.gov/quickfacts/fact/note/US/RHI625221">https://www.census.gov/quickfacts/fact/note/US/RHI625221</a></p><p><span class="font-weight-bold">Notas sobre la Información: </span>Los porcentajes estimados que se presentan son los declarados (ver Fuentes de Información). Los márgenes de error asociados con cada estimación son reportados como límites altos o bajos. Las siguientes clasificaciones especiales son definidas y valuadas como:<ul><li>0.0 - la información está disponible y el porcentaje es menor a 0.1; valuado como 0.0</li></ul></p><p><span class="font-weight-bold">Fuente de Información: </span>Estimaciones de 5 años según la Encuesta sobre la Comunidad Estadounidense de la Oficina del Censo (USCB ACS, por sus siglas en inglés), B03002</p>'
where id_ = 33; -- "Native Hawaiian or Pacific Islander (non-Hispanic)"

update tbl_indicators
set name_es = 'Otra raza (no hispano)',
	description_es = '<p><span class="font-weight-bold">Definición: </span>El porcentaje de personas que reportan ser de otra raza, pero no son de etnia hispana. La Oficina de Administración y Presupuesto (OMB, por sus siglas en inglés) de la Casa Blanca requiere que se recopile información sobre la raza de un mínimo de cinco grupos: blancos, negros o afroamericanos, indígenas americanos o nativos de Alaska, asiáticos y nativos de Hawái y otras islas del Pacífico. La OMB permite que la Oficina del Censo también utilice una sexta categoría: Alguna Otra Raza. La categoría Otra Raza se utiliza para personas que sienten que su identidad racial/étnica no se alinea con las demás opciones. Para obtener más información: <a target="_blank" href="https://www.census.gov/quickfacts/fact/note/US/RHI625221">https://www.census.gov/quickfacts/fact/note/US/RHI625221</a></p><p><span class="font-weight-bold">Notas sobre la Información: </span>Los porcentajes estimados que se presentan son los declarados (ver Fuentes de Información). Los márgenes de error asociados con cada estimación son reportados como límites altos o bajos. Las siguientes clasificaciones especiales son definidas y valuadas como:<ul><li>0.0 - la información está disponible y el porcentaje es menor a 0.1; valuado como 0.0</li></ul></p><p><span class="font-weight-bold">Fuente de Información: </span>Estimaciones de 5 años según la Encuesta sobre la Comunidad Estadounidense de la Oficina del Censo (USCB ACS, por sus siglas en inglés), B03002</p>'
where id_ = 34; -- "Other Race (non-Hispanic)"

update tbl_indicators
set name_es = 'Dos o Más Razas (no hispano)',
	description_es = '<p><span class="font-weight-bold">Definición: </span>El porcentaje de personas que reportan ser de Dos o Más Razas, pero no son de etnia hispana. Las personas pueden elegir dos o más razas ya sea marcando dos o más casillas en la pregunta sobre razas, dando múltiples respuestas o mediante alguna combinación de casillas y otras respuestas. Cabe aclarar que "Dos o Más Razas" hace referencia a combinaciones de dos o más de las siguientes categorías raciales: "blanco", "negro o afroamericano", "indígena americano o nativo de Alaska", "asiático", "nativo de Hawái u otras islas del Pacífico" o "alguna otra raza". Para obtener más información: <a target="_blank" href="https://www.census.gov/quickfacts/fact/note/US/RHI625221">https://www.census.gov/quickfacts/fact/note/US/RHI625221</a></p><p><span class="font-weight-bold">Notas sobre la Información: </span>Los porcentajes estimados que se presentan son los declarados (ver Fuentes de Información). Los márgenes de error asociados con cada estimación son reportados como límites altos o bajos. Las siguientes clasificaciones especiales son definidas y valuadas como:<ul><li>0.0 - la información está disponible y el porcentaje es menor a 0.1; valuado como 0.0</li></ul></p><p><span class="font-weight-bold">Fuente de Información: </span>Estimaciones de 5 años según la Encuesta sobre la Comunidad Estadounidense de la Oficina del Censo (USCB ACS, por sus siglas en inglés), B03002</p>'
where id_ = 35; -- "Two or More Races (non-Hispanic)"

update tbl_indicators
set name_es = 'Blanco (no hispano)',
	description_es = '<p><span class="font-weight-bold">Definición: </span>El porcentaje de personas que reportan ser blancas, pero no son de etnia hispana. Blanco se refiere a una persona que es descendiente de alguno de los pueblos originarios de Europa, Oriente Medio o el norte de África. Esto incluye a personas que indiquen que su raza es "blanca" o incluyan entradas tales como irlandés, alemán, italiano, libanés, árabe, marroquí o caucásico. Para obtener más información: <a target="_blank" href="https://www.census.gov/quickfacts/fact/note/US/RHI625221">https://www.census.gov/quickfacts/fact/note/US/RHI625221</a></p><p><span class="font-weight-bold">Notas sobre la Información: </span>Los porcentajes estimados que se presentan son los declarados (ver Fuentes de Información). Los márgenes de error asociados con cada estimación son reportados como límites altos o bajos. Las siguientes clasificaciones especiales son definidas y valuadas como:<ul><li>0.0 - la información está disponible y el porcentaje es menor a 0.1; valuado como 0.0</li></ul></p><p><span class="font-weight-bold">Fuente de Información: </span>Estimaciones de 5 años según la Encuesta sobre la Comunidad Estadounidense de la Oficina del Censo (USCB ACS, por sus siglas en inglés), B03002</p>'
where id_ = 36; -- "White (non-Hispanic)"

update tbl_indicators
set name_es = 'Masculino',
	description_es = '<p><span class="font-weight-bold">Definición: </span>El porcentaje de personas que reportan que su sexo biológico es masculino en lugar de femenino, las únicas dos opciones ofrecidas. Para obtener más información: <a target="_blank" href="https://www.census.gov/quickfacts/fact/note/US/SEX255221">https://www.census.gov/quickfacts/fact/note/US/SEX255221</a></p><p><span class="font-weight-bold">Notas sobre la Información: </span>Los porcentajes estimados que se presentan son los declarados (ver Fuentes de Información). Los márgenes de error asociados con cada estimación son reportados como límites altos o bajos. Las siguientes clasificaciones especiales son definidas y valuadas como:<ul><li>0.0 - la información está disponible y el porcentaje es menor a 0.1; valuado como 0.0</li></ul></p><p><span class="font-weight-bold">Fuente de Información: </span>Estimaciones de 5 años según la Encuesta sobre la Comunidad Estadounidense de la Oficina del Censo (USCB ACS, por sus siglas en inglés), B01001</p>'
where id_ = 38; -- "Male"

update tbl_indicators
set name_es = 'Femenino',
	description_es = '<p><span class="font-weight-bold">Definición: </span>El porcentaje de personas que reportan que su sexo biológico es femenino en lugar de masculino, las únicas dos opciones ofrecidas. Para obtener más información: <a target="_blank" href="https://www.census.gov/quickfacts/fact/note/US/SEX255221">https://www.census.gov/quickfacts/fact/note/US/SEX255221</a></p><p><span class="font-weight-bold">Notas sobre la Información: </span>Los porcentajes estimados que se presentan son los declarados (ver Fuentes de Información). Los márgenes de error asociados con cada estimación son reportados como límites altos o bajos. Las siguientes clasificaciones especiales son definidas y valuadas como:<ul><li>0.0 - la información está disponible y el porcentaje es menor a 0.1; valuado como 0.0</li></ul></p><p><span class="font-weight-bold">Fuente de Información: </span>Estimaciones de 5 años según la Encuesta sobre la Comunidad Estadounidense de la Oficina del Censo (USCB ACS, por sus siglas en inglés), B01001</p>'
where id_ = 39; -- "Female"

update tbl_indicators
set name_es = 'Hablan Español en el Hogar',
	description_es = '<p><span class="font-weight-bold">Definición: </span>El porcentaje de personas de 5 años o más que reportan hablar español en el hogar. Para obtener más información: <a target="_blank" href="https://www.census.gov/acs/www/about/why-we-ask-each-question/language/">https://www.census.gov/acs/www/about/why-we-ask-each-question/language/</a></p><p><span class="font-weight-bold">Notas sobre la Información: </span>Los porcentajes estimados que se presentan son los declarados (ver Fuentes de Información). Los márgenes de error asociados con cada estimación son reportados como límites altos o bajos. Las siguientes clasificaciones especiales son definidas y valuadas como:<ul><li>0.0 - la información está disponible y el porcentaje es menor a 0.1; valuado como 0.0</li></ul></p><p><span class="font-weight-bold">Fuente de Información: </span>Estimaciones de 5 años según la Encuesta sobre la Comunidad Estadounidense de la Oficina del Censo (USCB ACS, por sus siglas en inglés), S1603</p>'
where id_ = 40; -- "Speak Spanish or Spanish Creole at home"

update tbl_indicators
set name_es = 'Población Veterana',
	description_es = '<p><span class="font-weight-bold">Definición: </span>El porcentaje de civiles de 18 años y mayores que se identifican como veteranos. Veteranos son hombres y mujeres que prestaron servicio activo (incluso por un período corto) en el ejército americano, la marina, la fuerza aérea, el Cuerpo de Marines o la Guardia Costera, pero que actualmente no lo están haciendo, o aquellos que prestaron servicio en la Marina Mercante de Estados Unidos durante la Segunda Guerra Mundial. Para obtener más información: <a target="_blank" href="https://www.census.gov/quickfacts/fact/note/US/VET605220">https://www.census.gov/quickfacts/fact/note/US/VET605220</a></p><p><span class="font-weight-bold">Notas sobre la Información: </span>Los porcentajes estimados que se presentan son los declarados (ver Fuentes de Información). Los márgenes de error asociados con cada estimación son reportados como límites altos o bajos. Las siguientes clasificaciones especiales son definidas y valuadas como: <ul><li>0.0 - la información está disponible y el porcentaje es menor a 0.1; valuado como 0.0</li></ul></p><p><span class="font-weight-bold">Fuente de Información: </span>Estimaciones de 5 años según la Encuesta sobre la Comunidad Estadounidense de la Oficina del Censo (USCB ACS, por sus siglas en inglés), S2101</p>'
where id_ = 41; -- "Veteran population"
