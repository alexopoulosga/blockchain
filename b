for (let i = 1; i < this.chain.length; i++)

{

const currentBlock = this.chain[i];

const previousBlock = this.chain[i - 1];

if (currentBlock.hash !== currentBlock.calculateHash()) {

return false;

}

if (currentBlock.previousHash !== previousBlock.hash)

{

return false;

}

}

return true;

}
