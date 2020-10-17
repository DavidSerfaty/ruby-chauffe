# frozen_string_literal: true

def is_multiple_of_3_or_5?(current_number)
  if (current_number % 3).zero? || (current_number % 5).zero?
    true
  else
    false
  end
end

def sum_of_3_or_5_multiples(final_number)
  final_sum = 0

  if final_number.class == Integer && final_number >= 0
    (0...final_number).each do |i|
      final_sum += i if is_multiple_of_3_or_5?(i) == true
    end
    final_sum
  else
    'Yo ! Je ne prends que les entiers naturels. TG'
  end
end
