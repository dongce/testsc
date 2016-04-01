import sys
import javaobj



with open("test.ser", "rb") as f :
    obj = javaobj.loads(f.read())

print obj
print obj.testCodeStructure.globalUserCode.userCode
c = obj.classdesc
print c.field_names
# obj.testCodeStructure.globalUserCode.userCode = "tests() ;"

