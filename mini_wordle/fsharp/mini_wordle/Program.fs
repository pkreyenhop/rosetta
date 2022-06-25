// For more information see https://aka.ms/fsharp-console-apps

open System

let word_list = ["abbey";"abhor";"abide";"abort"]

let valid guess l = 
   (guess |> Seq.toList |> Seq.length |> ((=)5)) && (Seq.contains guess l)

let setup wl = 
    wl |> Seq.sortBy (fun _ -> Guid.NewGuid()) |> Seq.head


let repl word word_list = 
    let guess = 
        System.Console.ReadLine()
    if valid guess word_list then 
        true
    else
        false

let main = 
    let cw = 
        setup word_list
    repl cw word_list



   
   