use rand::seq::SliceRandom;
use std::io;

#[derive(Debug)]
struct GameState {
    guess: String,
    word: String,
    guess_left: u8,
    result_string: String,
}


fn main() {
    let (game_state, dict) = initiate();
    let ngs = repl(game_state, &dict);
    final_result(ngs)
}

fn repl(gs: GameState, dict: &Vec<String>) -> GameState {
    let mut gsn = gs;
    loop {
        gsn = read_guess(gsn, &dict);
        gsn = eval_guess(gsn);

        if (gsn.guess_left == 0) || (gsn.word == gsn.guess) {
            return gsn;
        }
    }
}

fn initiate() -> (GameState, Vec<String>) {
    let dict: Vec<String> = vec![
        "slate".to_string(),
        "drink".to_string(),
        "corny".to_string(),
        "wordy".to_string(),
    ];

    let mut gs0 = GameState {
        guess: String::from(""),
        word: String::from(""),
        guess_left: 6,
        result_string: String::from(""),
    };

    let mut rng = rand::thread_rng();
    gs0.word = dict.choose(&mut rng).unwrap().to_string();
    return (gs0, dict);
}

fn read_guess(gs: GameState, dict: &Vec<String>) -> GameState {
    let mut ngs = gs;
    let mut word = "".to_string();
    loop {
        let _result = io::stdin().read_line(&mut word);
        word = word.trim().to_string();
        if is_valid(&word, dict) {
            break;
        }
        word = "".to_string()
    }
    ngs.guess = word.to_string();
    ngs.guess_left -= 1;
    return ngs;
}

fn eval_guess(gs: GameState) -> GameState {
    let mut ngs = gs;
    let lg: Vec<char> = ngs.guess.chars().collect();
    let lw: Vec<char> = ngs.word.chars().collect();

    let mut result_string = "".to_string();

    for (cw, cg) in lw.iter().zip(lg.iter()) {
        if cg == cw {
            result_string.push_str("*")
        } else {
            if lw.contains(cg) {
                result_string.push_str("+")
            } else {
                result_string.push_str("-")
            }
        }
    }

    ngs.result_string = result_string;
    println!("{}", ngs.result_string);
    return ngs;
}

fn final_result(gs: GameState) {
    if gs.guess == gs.word {
        println!("you win!\n")
    } else {
        println!("you lost!\n")
    }
    print!("{:?}", gs)
}

fn is_valid(s: &String, dict: &Vec<String>) -> bool {
    if s.len() == 5 && dict.contains(&s) {
        true
    } else {
        false
    }
}
