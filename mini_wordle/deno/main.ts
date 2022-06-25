import { sample } from "https://deno.land/std@0.111.0/collections/mod.ts";

interface GameState {
    guess: string,
    word: string,
    guess_left: number,
    result_string: string,
}

const dict =['slate','drink','corny','wordy']

function main() {
    let game_state = initiate();
    repl(game_state)
    final_result(game_state)

}

function repl(gs: GameState): GameState {
    for(;;){
        let gs1 =read_guess(gs);
        let gs2 = eval_guess(gs1);

        if ((gs2.guess_left === 0)||(gs2.word===gs2.guess)) {
            return gs2
        }

    }
}

function initiate(): GameState {
    let gs0 = { 
        guess: "",
        word: "",
        guess_left: 5,
        result_string:''
    };
    
        gs0.word = sample(dict)!

        return gs0;
}

function read_guess(gs:GameState): GameState {
    gs.guess = prompt('guess:')!
    gs.guess_left--
    return gs
}
function eval_guess(gs:GameState): GameState{
    const lg  =Array.from(gs.guess)
    const lw = Array.from(gs.word)
    var result_string = ''

    lg.forEach((cg, index) => {
        const cw = lw[index];
        if (cg == cw){
            result_string += '*'
        }
        else {
            if (lw.includes(cg)){
                result_string += '+'
            }
            else {
                result_string += '-'
            }
        }
      });

    gs.result_string = result_string;
    console.log('      ',result_string)
    return gs
}


function final_result(gs:GameState){
    if (gs.guess===gs.word){
        console.log('you win!')
    }else{
        console.log('you lost!')
    }
    console.log(gs);
}

