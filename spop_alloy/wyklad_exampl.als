sig Platform {}
//zbiór stropów

sig Man {ceiling, floor: Platform}

fact {all m: Man | some n: Man | Above[n,m]}

pred Above[m, n: Man] {
m.floor = n.ceiling
}

assert a {all m: Man | some n: Man | Above[n,m]}

check a for 2

run Above


