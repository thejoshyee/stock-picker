def stock_picker(prices)
    profits = {}

    prices.each_with_index do |price1, index1|
        prices.each_with_index do |price2, index2|
            if index2 > index1
                profits[[index1, index2]] = price2 - price1
            end
        end
    end

    profits = profits.sort_by {|k, v| v}
    max_profit = profits[-1]

    puts "Buy on day #{max_profit[0][0]} and sell on day #{max_profit[0][1]} for maximum profit profit of #{max_profit[1]} dollars!"

end

stock_picker([17,3,1,2])

#price1 = 17, index1 = 0 
#price2 = 3, index2 = 1
# 3 - 17 = -14

#price1 = 3, index1 = 1
#price2 = 1, index2 = 2
# 1 - 3 = -2 

#price1 = 1, index1 = 2
#price2 = 2, index2 = 3
# 2-1 = 1

#buy on day 2 sell on day 3 for 1 dollar profit





