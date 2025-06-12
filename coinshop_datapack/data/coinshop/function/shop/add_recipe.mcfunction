# add_recipe.mcfunction
# Adds recipe to list based on current_buy and current_sell
data modify storage coinshop:temp new_recipe set value {rewardExp:0b,maxUses:999999,uses:0,priceMultiplier:0.0f}
data modify storage coinshop:temp new_recipe.buy set from storage coinshop:temp current_buy
data modify storage coinshop:temp new_recipe.sell set from storage coinshop:temp current_sell

# Add to recipes list
data modify storage coinshop:temp recipes append from storage coinshop:temp new_recipe

say [DEBUG] Recipe added to list