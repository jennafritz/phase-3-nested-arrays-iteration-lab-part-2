# def find_min_in_nested_arrays(src)
#   # src will be an array of arrays of integers
#   # Produce a new Array that contains the smallest number of each of the nested arrays
#   lowest_temps = []
#   array_index = 0
#   while array_index < src.count do
#     lowest_temps << src[array_index].sort[0]
#     array_index += 1
#   end
#   lowest_temps
# end

def find_min_in_nested_arrays(src)
  lowest_temps = []
  array_index = 0
  while array_index < src.count do
    element_index = 0
    lowest_temp = 100000000000
    while element_index < src[array_index].count do
      if src[array_index][element_index] < lowest_temp
        lowest_temp = src[array_index][element_index]
      end
      element_index += 1
    end
    lowest_temps << lowest_temp
    array_index += 1
  end
  lowest_temps
end