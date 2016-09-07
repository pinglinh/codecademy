x = 34
y = 34
if x < y
    print "x is less than y"
elsif x > y
    print "x is bigger than y"
else
    print "x is equal to y"
end


not_ordered = false
print "You've ordered!" unless not_ordered


# test_1 should be false
test_1 = (15 < 3) || (68 <= 4)

# test_2 = should be false
test_2 = 7 <= 8 && (72/2 > 9**2)

# test_3 = should be true
test_3 = false != true


# test_1 should be true
test_1 = ( 4 <= 6 ) && ( 6 >= 2 )

# test_2 = should be true
test_2 = ( 1 == 3 ) || ( 56 == 56 )

# test_3 = should be false
test_3 = !( 5 < 6 ) || !( 6 < 9 )