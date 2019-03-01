require "pry"

def reformat_languages(languages)
  formatted_hash = {}
  languages.each do |oofunctional, specific_language|
    specific_language.each do |language_name, language_type|
<<<<<<< HEAD
      formatted_hash[language_name] = language_type, {:style => [oofunctional]}
    end
  end
  
  # languages.each do |oofunctional, specific_language|
  #   specific_language.each do |language_name, language_type|
  #     if formatted_hash[language_name][1] && formatted_hash[language_name][1][:style] != oofunctional
  #       formatted_hash[language_name][1][:style].push(oofunctional)
  #       binding.pry
  #     else  
  #       formatted_hash[language_name] = language_type, {:style => [oofunctional]}
  #     end
  #   end
  # end
  
  languages.each do |oofunctional, specific_language|
    specific_language.each do |language_name, language_type|
      if formatted_hash[language_name][1][:style][0] != oofunctional
        formatted_hash[language_name][1][:style].push(oofunctional)
      end
    end
  end
  
  formatted_hash.each do |language_name, language_traits|
    formatted_hash[language_name] = language_traits[0].merge(language_traits[1])
  end
  
  formatted_hash
  
=======
      if formatted_hash[language_name][1]
        formatted_hash[language_name][:]
      else  
        formatted_hash[language_name] = language_type, {:style => [oofunctional]}
    end
  end
  formatted_hash
  binding.pry
>>>>>>> 1da90cfffa043a44c86e5c83375ca4d459bec2d8
end
