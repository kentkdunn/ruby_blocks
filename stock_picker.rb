

def stocks(prices)

  buy= 0
  sell = 0
  profit = 0

  
  (0..(prices.length - 2)).each do |x|
   
    ((x + 1)..prices.length - 1).each do |y|
      
      
      difference = prices[y] - prices[x]
      
     
      if difference > profit
        buy = x
        sell = y
        profit = difference
      end
    end
  end
  
  puts "day #{buy}: buy at #{prices[buy]}"
  puts "day #{sell}: sell at #{prices[sell]}"
  puts "profit of #{profit}"
  
  return [buy,sell]
end

stocks([17,3,6,9,15,8,6,1,10])

