def count_ones(n)
    return n.to_i.to_s(2).chars.map(&:to_i).inject(:+)
end
#n=gets
#puts count_ones(n)