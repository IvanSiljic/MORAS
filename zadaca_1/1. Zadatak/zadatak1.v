Set Implicit Arguments.
Require Import List.
Import ListNotations.

Inductive B : Type :=
  | O : B
  | I : B.

Definition And (x y : B) : B :=
match x with
  | O => O
  | I => y
end.

Definition Or (x y : B) : B :=
match x with
  | O => y
  | I => I
end.

Definition Not (x : B) : B :=
match x with
  | O => I
  | I => O
end.

(* a) *)
Goal forall (x y : B),
  Or (And (x) (Not y)) (Or (And (Not x) (Not y)) (And (Not x) y)) = Or (Not y) (Not x).
Proof.
  intros. destruct x, y; now simpl.
Qed.

(* b) *)
Goal forall (X Y Z : B),
  And (Not (And (Not X) (And Y Z))) (And (Not (And X (And Y (Not Z)))) (And X (And (Not Y) Z))) = And (X) (And (Not Y) (Z)).
Proof.
  intros. destruct X, Y, Z; now simpl.
Qed.























