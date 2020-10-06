def day_trader(arr)
  hash = Hash.new

  arr.each_with_index do |x,index|
    i=1
    while i < (arr.length)-index
      hash[[index, index+i]] = (arr[index+i])-x
      i += 1
    end
  end
  return hash.max_by{|key,value| value}.first
end
