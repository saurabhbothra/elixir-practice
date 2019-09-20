defmodule Practice.Factor do
  
  def factor(x) do
       originalList = []
       getPrimeFactor(x, 2, originalList)
  end

  def getPrimeFactor(x, primeNumber, primeFactorList) when x < primeNumber do
      primeFactorList
  
  end

  def getPrimeFactor(x, primeNumber, primeFactorList) when rem(x, primeNumber) == 0 do
     newX = div(x, primeNumber)
     newList = primeFactorList ++ [primeNumber]
     getPrimeFactor(newX, primeNumber, newList)
  end

  def getPrimeFactor(x, primeNumber, primeFactorList) do
    newNum = primeNumber + 1
    getPrimeFactor(x, newNum, primeFactorList)
  end

end
