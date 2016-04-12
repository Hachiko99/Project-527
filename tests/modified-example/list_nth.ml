type nat =
  | O
  | S of nat

type list =
  | Nil
  | Cons of nat * list

let list_nth : list -> nat -> nat |>
  { [] => ( 0 => 0
          | 1 => 0 )
  | [2] => ( 0 => 2
           | 1 => 0 )
  | [1; 2] => ( 0 => 1
              | 1 => 2 )
  | [1] => ( 0 => 1
           | 1 => 0 )
  | [2; 1] => ( 0 => 2
              | 1 => 1 )
  | [1; 2; 3] => ( 0 => 1
                 | 1 => 2
                 | 2 => 3 )
  } = ?
