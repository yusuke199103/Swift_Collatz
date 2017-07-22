import Foundation

func Collatz_Problem(target_val: uint) -> uint{
    var try_val = target_val
    while true {
        if try_val <= 1{
            break
        }else if try_val % 2 == 0 {
            try_val = try_val / 2
        }  else {
            try_val = try_val * 3 + 1
        }
    }
    return try_val
}

var ret_val: uint
var random_val = arc4random() % 9999999
print("problem is " + String(random_val))
ret_val = Collatz_Problem(target_val: random_val)
print("answer is " + String(ret_val))


