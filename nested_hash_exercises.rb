def find_language_information(languages, language_name)
  # Take languages (a nested hash) and language_name as a symbol, return the
  # value for the language_name key (which will be another hash!)

  # the languages hash will look something like this:
  # {
  #   ruby: { initial_release: 'December 25, 1996', is_beautiful?: true },
  #   javascript: { initial_release: 'December 4, 1995', is_beautiful?: false }
  # }
  languages[language_name]

end
hash = {
  ruby: { initial_release: 'December 25, 1996', is_beautiful?: true },
 javascript: { initial_release: 'December 4, 1995', is_beautiful?: false }
}

language_info = find_language_information(hash, :ruby)
p language_info


def add_information_about_language(languages, language_name, info_key, info_value)
  # Take languages and add the key/value pair info_key/info_value to the nested
  # hash of language_name, then return the updated languages hash
  languages[language_name][info_key] = info_value
  languages

end

hash= {
  ruby: { initial_release: 'December 25, 1996' },
  javascript: { is_beautiful?: false }
}
p add_information_about_language(hash, :ruby, :is_beautiful?, true)

def add_language(languages, language_name, language_info_value)
  # Take languages and add the key/value pair language_name/language_info_value
  # to it, then return languages
  languages[language_name]=language_info_value
  languages
end

hash={
  ruby: { is_beautiful?: true, initial_release: 'December 25, 1996' },
  javascript: { is_beautiful?: false, initial_release: 'December 4, 1995' }
}

value_to_add = { is_beautiful?: false, initial_release: 'May 23, 1995' }

p add_language(hash, :java, value_to_add)

def delete_information_about_language(languages, language_name, info_key)
  # Take languages and delete the key/value pair with key info_key from
  # language_name, then return languages
  
  languages[language_name].delete(info_key)
  languages
end

hash={
  ruby: { is_beautiful?: true, initial_release: 'December 25, 1996' },
  javascript: { is_beautiful?: false, initial_release: 'December 4, 1995' }
}

p delete_information_about_language(hash, :ruby, :is_beautiful?)


def delete_language(languages, language_name)
  # Take languages and delete the language_name key/value pair, then return
  # languages
  languages.delete(language_name)
  languages
end

hash={
  ruby: { is_beautiful?: true, initial_release: 'December 25, 1996' },
  javascript: { is_beautiful?: false, initial_release: 'December 4, 1995' }
}
p delete_language(hash, :ruby)

def find_beautiful_languages(languages)
  # Take languages and return a hash containing only languages which have the
  # key/value pair { is_beautiful?: true } listed in their information
  languages.select{|name, data|data[:is_beautiful?]==true}
end

hash={
  ruby: { is_beautiful?: true, initial_release: 'December 25, 1996' },
  javascript: { is_beautiful?: false, initial_release: 'December 4, 1995' },
  python: { is_beautiful?: false, initial_release: 'Feb 20, 1991' }
}
  p find_beautiful_languages(hash)

def find_language_facts(languages, language_name, fact_index = 0)
  # Take languages (now with additional facts added to each language with the
  # key :facts and value of an array of strings) and return the fact
  # language_name has at fact_index of its facts array, or at index 0 if this
  # argument is not given

  # the revised languages hash will look something like this:
  # {
  #   ruby: { facts: ['fact 0', 'fact 1'],
  #           initial_release: 'December 25, 1996',
  #           is_beautiful?: true },

  #   javascript: { facts: ['fact 0', 'fact 1'],
  #                 initial_release: 'December 4, 1995',
  #                 is_beautiful?: false }
  # }

  lang = languages.dig(language_name)
  return nil if lang.nil?
  lang[:facts][fact_index]
end

hash={
  ruby: { 
  facts: ['was made for programmer happiness', 'its code is beautiful'],
  initial_release: 'December 25, 1996',
  is_beautiful?: true },

  javascript: { 
  facts: ['you have to use semicolons everywhere', "its real name isn't even javascript"],
  initial_release: 'December 4, 1995',
  is_beautiful?: false }
}

p find_language_facts(hash, :ruby,0)