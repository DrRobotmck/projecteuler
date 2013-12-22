require 'pry'

def production

	master = 731671765313306249192251196744265747423553491949349698352031277450632623957831801698480186947885184385861560789112949495459501737958331952853208805511125406987471585238630507156932909632952274430435576689664895044524452316173185640309871112172238311362229893423380308135336276614282806444486645238749303589072962904915604407723907138105158593079608667017242712188399879790879227492190169972088809377665727333001053367881220235421809751254540594752243525849077116705560136048395864467063244157221553975369781797784617406495514929086256932197846862248283972241375657056057490261407972968652414535100474821663704844031998900088952434506585412275886668811642717147992444292823086346567481391912316282458617866458359124566529476545682848912883142607690042242190226710556263211111093705442175069416589604080719840385096245544436298230987879927244284909188845801561660979191338754992005240636899125607176060588611646710940507754100225698315520005593572972571636269561882670428252483600823257530420752963450

	all_numbers = master.to_s.split("")
	split_up = [["7", "3","1","6","7"]]
	i = 1
	while split_up[-1] != ["9","6","3","4","5"]

		split_up << [all_numbers[i],all_numbers[i+1],all_numbers[i+2],all_numbers[i+3],all_numbers[i+4]]
		if split_up[-1].include?("0")
			split_up.pop
		end
		i+=1

	end

	puts split_up.sort.last.map{|number| number.to_i}.reduce(:*)

end

production