import sys
#
# >>> Escriba el codigo del mapper a partir de este punto <<<
#

if __name__ == "__main__":
    
    for line in sys.stdin:

      letra = line.split('\t')[1]
      letra= letra.rstrip('\r\n')
      valor = line.split('\t')[0]

      for i in range(len(letra)):
          sys.stdout.write("{}\t{}\n".format(str(letra[i]),valor.zfill(3)))