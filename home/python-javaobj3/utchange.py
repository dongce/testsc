import sys
import javaobj



with open(sys.argv[1], "rb") as f :
    obj = javaobj.loads(f.read())

print ( obj.testCodeStructure.globalUserCode.userCode      )
# obj.testCodeStructure.globalUserCode.userCode = "tests() ;"

print(  len(javaobj.dumps(obj)) )
# with open(sys.argv[1], "wb") as f :
    # f.write(javaobj.dumps(obj))
