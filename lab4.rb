def decode_ways(code)
    aa=code.chomp.chars
    dd=Array.new(aa.size,1)
    aa.each_with_index do |char,index| dd[index]=(char=="0"?0:1)*dd[index-1]+(( index!=0 && ((aa[index-1]=="1")||(("0".."6")===aa[index-1]&&aa[index-1]=="2")))?1:0)*(index!=0?dd[index-2]:0)end
    return dd[aa.size-1]
end