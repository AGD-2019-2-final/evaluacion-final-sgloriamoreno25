-- Pregunta
-- ===========================================================================
-- 
-- Obtenga los cinco (5) valores más pequeños de la 3ra columna.
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

y = FOREACH u GENERATE $2;
w = ORDER y BY $0;
b = LIMIT w 5;
store b into 'output';