-- 
-- Pregunta
-- ===========================================================================
-- 
-- Para el archivo `data.tsv` compute Calcule la cantidad de registros en que 
-- aparece cada letra minúscula en la columna 2.
-- 
-- Escriba el resultado a la carpeta `output` del directorio actual.
-- 
fs -rm -f -r output;
--
-- >>> Escriba su respuesta a partir de este punto <<<
--

u = LOAD 'data.tsv'
    AS (f1:CHARARRAY, f2:BAG{t:(p:CHARARRAY)}, f3:MAP[]);
DUMP u;

z = FOREACH u GENERATE FLATTEN($1);
r = GROUP z BY $0;
w = FOREACH r GENERATE group, COUNT($1);
store w into 'output' USING PigStorage('\t');