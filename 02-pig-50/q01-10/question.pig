-- 
-- Pregunta
-- ===========================================================================
-- 
-- Para el archivo `data.tsv` compute la cantidad de registros por letra. 
-- Escriba el resultado a la carpeta `output` del directorio actual.
--
fs -rm -f -r output;
--
-- >>> Escriba su respuesta a partir de este punto <<<
--

u = LOAD 'data.tsv' USING PigStorage('\t')
    AS (letra:CHARARRAY,
        fecha:CHARARRAY,
        numero:INT);
DUMP u;

y = GROUP u BY $0;
z = FOREACH y GENERATE $0, COUNT($1);
store z into 'output';