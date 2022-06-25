package main

import (
	"fmt"
	"math/rand"
	"time"
	"golang.org/x/exp/slices"
)

type GameState struct {
	guess         string
	word          string
	guess_left    int
	result_string string
}

var dict = [...]string{"slate", "drink", "corny", "wordy"}

func main() {
	var game_state = initiate()
	repl(game_state)
	final_result(game_state)

}

func repl(gs GameState) GameState {
	var gsn = gs
	for {
		gsn = read_guess(gsn)
		gsn = eval_guess(gsn)

		fmt.Println(gsn)

		if (gsn.guess_left == 0) || (gsn.word == gsn.guess) {
			fmt.Println("donE!!!!!!")
			return gsn
		}

	}
}

func initiate() GameState {
	rand.Seed(time.Now().Unix())
	var gs0 = GameState{
		guess:         "",
		word:          "",
		guess_left:    6,
		result_string: "",
	}

	gs0.word = dict[rand.Int()%len(dict)]

	return gs0
}

func read_guess(gs GameState) GameState {
	var word string
	fmt.Print("guess:")
	fmt.Scanln(&word)
	gs.guess = word + "     "
	gs.guess_left--
	return gs
}

func eval_guess(gs GameState) GameState {
	lg := []rune(gs.guess)
	lw := []rune(gs.word)

	result_string := ""

	for index := range lw {
		cw := lw[index]
		cg := lg[index]

		if cg == cw {
			result_string += "*"
		} else {
			if slices.Contains(lw, cg) {
				result_string += "+"
			} else {
				result_string += "-"
			}
		}
	}

	gs.result_string = result_string
	fmt.Println("     ", result_string)
	return gs
}

func final_result(gs GameState) {
	if gs.guess == gs.word {
		fmt.Println("you win!")
	} else {
		fmt.Println("you lost!")
	}
	fmt.Println(gs)
}
