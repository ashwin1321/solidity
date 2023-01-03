import hashlib

# generating hash
def hashGen(data):
    result = hashlib.sha256(data.encode('utf-8')).hexdigest()
    return result

class Block:
    def __init__(self,data,hash,prevHash):
        self.data = data
        self.prevHash = prevHash
        self.hash = hash
        
class Blockchain:
    def __init__(self):
        hashLast = hashGen("hash_last")
        hashStart = hashGen("gen_hash")

        genesis = Block("gen_data",hashStart,hashLast)
        self.chain = [genesis]

    def addBlock(self,data):
        prevHash = self.chain[-1].hash
        hash = hashGen(data+prevHash)
        block = Block(data,hash,prevHash)
        self.chain.append(block)
    
bc = Blockchain()
bc.addBlock("data1")
bc.addBlock("data2")
bc.addBlock("data3")    

for block in bc.chain:
    print(block.__dict__)