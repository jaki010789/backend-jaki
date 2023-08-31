
array_list=[1,2,3,4,5]

def nil_array(number)
    # return an array containing `nil` the given number of times
    Array.new(number, "nil")
  end

  puts nil_array(5)


  
  def first_element(array)
    # return the first element of the array
    
    array.first

  end

  puts first_element(array_list)

  
  def third_element(array)
    # return the third element of the array

    array[2]
  end

  puts third_element(array_list)
  
  def last_three_elements(array)
  # return the last 3 elements of the array

   array.last(3)

  end

  puts last_three_elements(array_list)
  
  def add_element(array)
    # add an element (of any value) to the array

    array.unshift(0)

  end

  puts add_element(array_list)

  
  def remove_last_element(array)
    # Step 1: remove the last element from the array
    array.pop
  
    # Step 2: return the array (because Step 1 returns the value of the element removed)
    array
  end

  puts remove_last_element(array_list)


  def remove_first_three_elements(array)
    # Step 1: remove the first three elements
   array.shift(3)
  
    # Step 2: return the array (because Step 1 returns the values of the elements removed)
    array
  end

  puts remove_first_three_elements(array_list)
  
  def array_concatenation(original, additional)
    # return an array adding the original and additional array together
    original.concat(additional)

  end
  new_array_list=[6,7,8,9]
  puts array_concatenation(array_list,new_array_list)
  
  def array_difference(original, comparison)
    # return an array of elements from the original array that are not in the comparison array
    list_comparison = original - comparison
    list_comparison
  end
 
  second_array=[3,4,5]
  puts array_difference(array_list, second_array)

  
  def empty_array?(array)
    # return true if the array is empty
    array.empty?
  end
   
  puts empty_array? (array_list)


  def reverse(array)
    array.reverse

  end

  puts reverse(array_list)
  
  def array_length(array)
    # return the length of the array

    array.length
  end
   
puts array_length(array_list)

  def include?(array, value)
    # return true if the array includes the value
    array.include?(value)
  end

  puts include?(array_list, 2)
  
  def join(array, separator)
    # return the result of joining the array with the separator
    array.join(separator)

  end
  array_string=[1,2,3,4,5,6,7,8]
  puts join(array_string, "-")