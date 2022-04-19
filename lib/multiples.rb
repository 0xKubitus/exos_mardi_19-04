def is_multiple_of_3_or_5?(n)
  n%3 == 0 || n%5 == 0 ? true : false
end

# p is_multiple_of_3_or_5?(3)
# p is_multiple_of_3_or_5?(5)
# p is_multiple_of_3_or_5?(51)
# p is_multiple_of_3_or_5?(45)
# p is_multiple_of_3_or_5?(2)
# p is_multiple_of_3_or_5?(7)
# p is_multiple_of_3_or_5?(4)

def sum_of_3_or_5_multiples(final_number)

  # afficher alerte en cas d'input != integer
  unless final_number.class == Integer && final_number >= 0
    return "ALERTE GENERALE ! Pas d'integer !!!"
  else
    final_sum = 0 #cette variable est la somme finale qui sera retournée. Ici on l'initialise à zéro
   
    # Ici, lance une boucle qui va de zéro au chiffre "final_number" EXCLU (car on est sur du strictement inférieur)
    for i in 0...final_number

    # cette boucle indente à chaque tour une variable (par exemple "current_i_value") qui vaudra 0 puis 1 puis 2 ... etc.
      current_i_value = i
  
      if is_multiple_of_3_or_5?(current_i_value)   
        final_sum += current_i_value
      end
    end

    if final_sum != nil
      return final_sum
    end

  end 

end

  
 