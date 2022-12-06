def m1(&block)
  return "Method without block"  unless block_given?
  return block
end
