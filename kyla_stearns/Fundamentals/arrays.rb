# .at
arr = [3,6,1,8,13]
p arr.at(1)
# should output => 6

# .fetch
p arr.fetch(3)
# should output => 8

# .delete
# p arr
arr.delete(1)
# p arr

# .reverse -- # add ! after if you want to actually change the value to the new reversed array
p arr.reverse

# .length
p arr.length

# .sort -- # add ! after if you want to actually change the value to the new reversed array
p arr.sort

# .slice -- slices AFTER the index you give it -- add ! after if you want to actually change the value to the new reversed array
p arr.slice(3)

# .shuffle -- add ! after if you want to actually change the value to the new reversed array
# randomly shuffles indexes
p arr.shuffle

# .join
p arr.join('-')

# .insert -- indicate index to add at and what to add
p arr.insert(2, "snacks")

# values_at
p arr.values_at(0,2,4)