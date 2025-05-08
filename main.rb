class ADF
  def initialize(cadeia)
      @cadeia = cadeia
      @indice = 0
      @max = cadeia.size 
      @alfabeto_saida = "Caracteres permitidos: A-Z 0-9 . - ? ,"
      @palavra = ""
      @msg_erro = ""
  end

# pega apenas um caracter
def proximo
  if @indice >= @max
      "f"
  else
      @cadeia[@indice]
  end
end

def prox_letra(estado)
    case estado
        in "q1" 
            @palavra << "e"
        in "q2" 
            @palavra << "t"
        in "q3" 
            @palavra << "i"
        in "q4" 
            @palavra << "a"
        in "q5" 
            @palavra << "n"
        in "q6" 
            @palavra << "m"
        in "q7" 
            @palavra << "s"
        in "q8" 
            @palavra << "u"
        in "q9" 
            @palavra << "r"
        in "q10" 
            @palavra << "w"
        in "q11" 
            @palavra << "d"
        in "q12" 
            @palavra << "k"
        in "q13" 
            @palavra << "g"
        in "q14" 
            @palavra << "o"
        in "q15" 
            @palavra << "h"
        in "q16" 
            @palavra << "v"
        in "q17" 
            @palavra << "f"
        in "q19" 
            @palavra << "l"
        in "q21" 
            @palavra << "p"
        in "q22" 
            @palavra << "j"
        in "q23" 
            @palavra << "b"
        in "q24" 
            @palavra << "x"
        in "q25" 
            @palavra << "c"
        in "q26" 
            @palavra << "y"
        in "q27" 
            @palavra << "z"
        in "q28" 
            @palavra << "q"
        in "q31" 
            @palavra << "5"
        in "q32" 
            @palavra << "4"
        in "q33" 
            @palavra << "3"
        in "q35" 
            @palavra << "2"
        in "q37" 
            @palavra << "1"
        in "q38" 
            @palavra << "6"
        in "q39" 
            @palavra << "7"
        in "q41" 
            @palavra << "8"
        in "q42" 
            @palavra << "9"
        in "q43" 
            @palavra << "0"
        in "q44" 
            @palavra << "?"
        in "q45" 
            @palavra << "."
        in "q46" 
            @palavra << "-"
        in "q47" 
            @palavra << ","
    else
        @msg_erro = "Não foi possível traduzir essa palavra, verifique se a sequência está correta."   
    end      
end

def iniciar
  estado = "q0" # q0-q47 (i.e. 48 estados) todos voltam para o q0 ao receber " "

  puts "Máquina iniciou no estado: " + estado

  loop do
    case [proximo, estado]
        in ["f", estado]
            if @msg_erro != ""
                puts "\nCódigo morse: " + @cadeia
                puts @msg_erro
                puts @alfabeto_saida
                break
            elsif estado != "q0"
                prox_letra(estado)
            else 
                puts "\nCódigo morse: " + @cadeia
                puts "Tradução: " + @palavra
                break
            end
            estado = "q0"
        in [" ", estado]
            if @msg_erro != ""
                puts "\nCódigo morse: " + @cadeia
                puts @msg_erro
                puts @alfabeto_saida
                break
            elsif  estado != "q0"
                prox_letra(estado)
            end
            estado = "q0"
        in [".", "q0"]
            estado = "q1"
        in ["-", "q0"]
            estado = "q2"
        in ["/", "q0"]
            @palavra << " "
            estado = "q0"
        in [".", "q1"]
            estado = "q3"
        in ["-", "q1"]
            estado = "q4"
        in [".", "q2"]
            estado = "q5"
        in ["-", "q2"]
            estado = "q6"
        in [".", "q3"]
            estado = "q7"
        in ["-", "q3"]
            estado = "q8"
        in [".", "q4"]
            estado = "q9"
        in ["-", "q4"]
            estado = "q10" 
        in [".", "q5"]
            estado = "q11"
        in ["-", "q5"]
            estado = "q12" 
        in [".", "q6"]
            estado = "q13"
        in ["-", "q6"]
            estado = "q14"
        in [".", "q7"]
            estado = "q15"
        in ["-", "q7"]
            estado = "q16"
        in [".", "q8"]
            estado = "q17"
        in ["-", "q8"]
            estado = "q18"
        in [".", "q9"]
            estado = "q19"
        in ["-", "q9"]
            estado = "q20"
        in [".", "q10"]
            estado = "q21"
        in ["-", "q10"]
            estado = "q22"
        in [".", "q11"]
            estado = "q23"
        in ["-", "q11"]
            estado = "q24"
        in [".", "q12"]
            estado = "q25"
        in ["-", "q12"]
            estado = "q26"
        in [".", "q13"]
            estado = "q27"
        in ["-", "q13"]
            estado = "q28"
        in [".", "q14"]
            estado = "q29"
        in ["-", "q14"]
            estado = "q30"
        in [".", "q15"]
            estado = "q31"
        in ["-", "q15"]
            estado = "q32"
        in ["-", "q16"]
            estado = "q33"
        in [".", "q18"]
            estado = "q34"
        in ["-", "q18"]
            estado = "q35"
        in [".", "q20"]
            estado = "q36"
        in ["-", "q22"]
            estado = "q37"
        in [".", "q23"]
            estado = "q38"
        in [".", "q27"]
            estado = "q39"
        in ["-", "q27"]
            estado = "q40"
        in [".", "q29"]
            estado = "q41"
        in [".", "q30"]
            estado = "q42"
        in ["-", "q30"]
            estado = "q43"
        in [".", "q34"]
            estado = "q44"
        in ["-", "q36"]
            estado = "q45"
        in ["-", "q38"]
            estado = "q46"
        in ["-", "q40"]
            estado = "q47"
  
        else
            puts "\nCódigo morse: " + @cadeia
            puts "Não foi possível traduzir essa palavra, verifique se a sequência está correta." 
            puts @alfabeto_saida
            break
        end

    @indice += 1 
    puts @indice.to_s + ". Estado: " + estado
  end
end
end

adf = ADF.new("-.-. --- -.. .. --. --- / -- --- .-. ... . / -.. . / . -..- . -- .--. .-.. ---")
adf.iniciar
