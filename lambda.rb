lambda1 = lambda { |num|
  n = num.abs.digits.length
  return "Недопустима кількість розрядів. Число повинно бути не більше, ніж 5-розрядним" if n > 5
  return n
}
