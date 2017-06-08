from collections import OrderedDict

dic = OrderedDict()


with open("temp.txt" , "r") as f :
    for l in f.readlines() :
        dic[l.strip()] = dic.get(l.strip() , 0 ) + 1

with open("temp2.txt" , "w") as f :
    for key, value in dic.items() :
        for l in range(value) :
            f.write(key)
            f.write(" , " )
            f.write("%d\n"%( l + 1 ))
            
