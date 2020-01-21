import sys
#
# >>> Escriba el codigo del mapper a partir de este punto <<<
#

if __name__ == '__main__':

    curkey = None
    valmax = None
    valmin =None

    for line in sys.stdin:

        key, val = line.split("\t")
        val = float(val)
        
        if key == curkey:
          valmax = max(valmax, val)
          valmin = min(valmin, val)
                       
        else:
            
            if curkey is not None:
                
                sys.stdout.write("{}\t{}\t{}\n".format(curkey, valmax, valmin))

            curkey = key
            valmax = val
            valmin = val
            
    sys.stdout.write("{}\t{}\t{}\n".format(curkey, valmax, valmin))