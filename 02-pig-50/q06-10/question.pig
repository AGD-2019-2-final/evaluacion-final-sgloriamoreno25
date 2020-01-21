-- 
-- Pregunta
-- ===========================================================================
-- 
-- Para el archivo `data.tsv` Calcule la cantidad de registros por clave de la 
-- columna 3. En otras palabras, cuántos registros hay que tengan la clave 
-- `aaa`?
-- 
-- Escriba el resultado a la carpeta `output` del directorio actual.
-- 
fs -rm -f -r output;
--
-- >>> Escriba su respuesta a partir de este punto <<<
--

u = LOAD 'data.tsv' USING PigStorage('\t')
    AS (f1:CHARARRAY, f2:BAG{t:(p:CHARARRAY)}, f3:MAP[]);
DUMP u;

z = FOREACH u GENERATE FLATTEN($2);
r = GROUP z BY $0;
w = FOREACH r GENERATE group, COUNT($1);

store w into 'output' USING PigStorage(',');
