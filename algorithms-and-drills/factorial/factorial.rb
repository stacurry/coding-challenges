def factorial_iterative(n)
count = 1
factorial = 1
  until count > n
    factorial *= count
    count +=1
  end
  factorial
end

def factorial_recursive(n)
  factorial = 1
  return factorial if n == 0
  factorial = n * factorial_recursive(n -1)
end
