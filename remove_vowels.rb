def remove_vowels(str)
  re = /[a,e,o,i,u]/i
  re.match?(str) ? str.gsub(re, "") : str
end
