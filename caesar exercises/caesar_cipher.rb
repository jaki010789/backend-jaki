def caesar_cipher(string, moves)
    # implements caesar cipher
    if string.nil? || string.empty?
    return""
    end
    for e in 0...string.length do
        p ("a".."z")=== string[e]
        if ("a".."z")=== string[e] || ("A".."Z")===string[e]
           
            string_log= string[e].ord
            string_log +=moves

            if string_log>122 && ("a".."z")===string[e]
                aux=string_log-122
                string_log= 96+aux
            end

            if string_log>90 && ("A".."Z")===string[e]
                aux=string_log-90
                string_log= 64+aux
            end

            string[e]=string_log.chr
        end
    end
    string

end

p caesar_cipher("what a strin", 5)

