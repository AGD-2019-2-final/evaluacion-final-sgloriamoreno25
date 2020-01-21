import sys
#
#  >>> Escriba el codigo del mapper a partir de este punto <<<
#

if __name__ == '__main__':

    curkey = None
    suma = 0
    promedio = 0
    n = 1
    

    for line in sys.stdin:

        key, val = line.split("\t")
        val = float(val)
        
        if key == curkey:
          suma += val
          promedio = suma/n
                       
        else:
            
            if curkey is not None:
                
                sys.stdout.write("{}\t{}\t{}\n".format(curkey, suma, promedio))

            curkey = key
            suma = val
            n = 1
            promedio= suma/n
        
        n=n+1
            
    sys.stdout.write("{}\t{}\t{}\n".format(curkey, suma, promedio))