#write your code here
def add(a, b)
  a+b
end

def subtract(a, b)
  a-b
end

def sum(arr)
  sum = 0
  arr.each do |n|
    sum += n
  end
  sum
end

def multiply(*arr)
  product = 1
  arr.each do |n|
    product *= n
  end
  product
end

def pow(a, b)
  a**b
end

def fact(a)
  factorial = 1
  size = a
  a.times do
    factorial *= size
    size -= 1
  end
  factorial
end

