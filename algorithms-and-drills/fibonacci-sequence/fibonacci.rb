def iterative_nth_fibonacci_number(n)
  return n if n <= 1

  count = 2
  fibs = [0, 1]

  until count > n
    fibs << fibs[0] + fibs[1]
    fibs = fibs[1..2]
    count += 1
  end
  return fibs[-1]
end

def recursive_nth_fibonacci_number(n)
  return n if n <= 1

  fib = recursive_nth_fibonacci_number(n-1) + recursive_nth_fibonacci_number(n-2)
  return fib
end
