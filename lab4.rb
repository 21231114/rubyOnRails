def decode_ways(code)
  aa = code.to_s.chars
  dd = Array.new(aa.size, 1)
  aa.each_with_index do |char, index|
    dd[index] =
      (char == '0' ? 0 : 1) * dd[index - 1] + (index >=1 && ((aa[index - 1] == '1') || (('0'..'6').include?(char) && index >= 1 && aa[index - 1] == '2')) ? 1 : 0) * (index >= 1 ? dd[index - 2] : 0)
  end
  dd[aa.size - 1]
end
#puts decode_ways(1271026)
