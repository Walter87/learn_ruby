def add(a,b)
  a+b
end

def subtract(a,b)
  a-b
end

def sum(array)
  array.inject(0, :+)
end

def multiply(*a)
  a.inject(1, :*)
end

def power(a,b)
  a**b
end

def factorial(number)
  return 1 if number == 0
  number * factorial(number-1)
end
