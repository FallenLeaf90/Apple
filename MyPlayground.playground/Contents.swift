import UIKit
import Darwin


let frame = CGRect(x: 100, y: 100, width: 200, height: 100)
let view = UILabel(frame: frame)


view.backgroundColor = UIColor.white
view.textAlignment = .center
view.text = "마수리 ㅗ"

var cValue = 3
cValue = 7

let name = "마수리 키"
var height = 175
var heightname = name + String(height)

print(heightname)

let a = 1
let b = 5

for row in a...b{
    row
}

for row in a..<b{
        row
}
let poem = "계절이 지나가는 하늘에는 \n"
+ "가을로 가득 차 있습니다.\n"
+ "나는 아무 걱정도 없이 가슴 속의 별들을\n"
+ "다 헬 듯 합니다"


print(poem)

func divide(base: Int) {
    
    guard base != 0 else {
        print("연산할 수 없습니다")
    return
    }
    
    guard base > 0 else {
        print("base는 0보다 커야 합니다.")
    return
    }
        guard base < 100 else {
            print("base는 100보다 작아야 합니다.")
            return
        }
    
    let result = 100 / base
    print(result)
}
