# frozen_string_literal: true

def day_trader(arr)
  hash = {}

  arr.each_with_index do |x, index|
    i = 1
    while i < arr.length - index
      hash[[index, index + i]] = (arr[index + i]) - x
      i += 1
    end
  end
  hash.max_by { |_key, value| value }.first
end
