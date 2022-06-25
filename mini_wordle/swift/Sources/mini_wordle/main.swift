
struct GameState {
	var guess:         String = ""
	var word:          String = "" 
	var guess_left:   Int = 6
	var result_string: String = ""
}

let dict = ["slate", "drink", "corny", "wordy"]

func main() {
	let game_state = initiate()
	let ngs = repl(gs: game_state)
	final_result(gs:ngs)

}

func repl(gs: GameState)-> GameState {
	var gsn = gs
	while true {
		gsn = read_guess(gs:gsn)
		gsn = eval_guess(gs:gsn)

		print(gsn)

		if (gsn.guess_left == 0) || (gsn.word == gsn.guess) {
			return gsn
		}

	}
}

func initiate()-> GameState {
	var gs0 = GameState()
	gs0.word = dict.randomElement()!
	return gs0
}

func read_guess(gs: GameState) ->GameState {
	var ngs = gs
    var word: String
    repeat {
	    word = readLine()!
    } while (!is_valid(s: word))
	ngs.guess = word
	ngs.guess_left  -=  1
	return ngs
}

func eval_guess(gs: GameState) -> GameState {
    var ngs = gs
	let lg = [Character](gs.guess)
	let lw = [Character](gs.word)

	var result_string = ""

	for (cw,cg) in zip(lw,lg) {
		
		if cg == cw {
			result_string += "*"
		} else {
			if lw.contains(cg) {
				result_string += "+"
			} else {
				result_string += "-"
			}
		}
	}

	ngs.result_string = result_string
	print( result_string)
	return ngs
}

func final_result(gs: GameState) {
	if gs.guess == gs.word {
		print("you win!\n")
	} else {
		print("you lost!\n")
	}
	print(gs)
}

func is_valid(s:String)->Bool{
    (s.count==5 && dict.contains(s)) ? true : false
}

main()
