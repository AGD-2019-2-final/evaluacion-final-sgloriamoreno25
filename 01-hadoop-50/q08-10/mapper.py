import sys
#
#  >>> Escriba el codigo del mapper a partir de este punto <<<
#

if __name__ == "__main__":

    
    for line in sys.stdin:
            sys.stdout.write("{}\t{}".format(line.split('   ')[0], line.split('   ')[2]))