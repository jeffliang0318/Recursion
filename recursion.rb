## all good, github testing
def sum_to(n)

  # sum_to(2) => 2 + sum_to(1) = 2 + 1
return if n < 1
return 1 if n == 1

n + sum_to(n-1)
end

def add_numbers(arr)
#add_numbers([1,3,5]) => arr[0] + add_numbers(arr[1...arr.length])
  return nil if arr.nil?
  return arr[0] if arr.length == 1

  arr[0] + add_numbers(arr.drop(1))

end

def gamma_fnc(n)
# gamma_fnc(2) => 1 * gamma_fnc(1) == 1
  return nil if n < 1
  return 1 if n == 1
   (n - 1) * gamma_fnc(n - 1)

end

def ice_cream_shop(flavors, favorite)
  return false if flavors == []
  return false if flavors.length == 1 && flavors != favorite

  return true if flavors.first == favorite

  ice_cream_shop(flavors.drop(1), favorite)

end

def reverse(str)
  return str if str.length == 1

  str[-1] + reverse(str[0..-2])
end
