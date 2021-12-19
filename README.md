# 구현사항

### 아이스크림 구현 예시
```swift 
let fristIceCream = IceCream(lengthOfIceCream: 6, IceCreamBody: "|#$%&&%$#|", topping: "*", lengthOfIceCreamBar: 3)
```
![스크린샷 2021-12-19 오후 6 41 17](https://user-images.githubusercontent.com/65153742/146670384-1af2111f-21ea-40ac-8450-c6d5f8808d6f.png)

<br>

```swift
let secondIceCream = IceCream(lengthOfIceCream: 8, IceCreamBody: "***", topping: "#", lengthOfIceCreamBar: 3)
```
![스크린샷 2021-12-19 오후 6 42 21](https://user-images.githubusercontent.com/65153742/146670415-32fb9b33-508c-4197-ad12-29cf4b68e79f.png)


<br>

```swift
let thirdIceCream = IceCream(lengthOfIceCream: 6, IceCreamBody: "|0|", lengthOfIceCreamBar: 3)
```
![스크린샷 2021-12-19 오후 6 42 51](https://user-images.githubusercontent.com/65153742/146670428-41ae76a6-118c-4a8d-8e0d-a56dea10abf9.png)

<br><br>

### 코드
- 아이스크림을 위한 변수 4개 만들기
```swift
    var lengthOfIceCream: Int
    var iceCreamBody: String
    var topping: String
    var lengthOfIceCreamBar: Int
```
<br>

- 아이스크림 몸통이 `|0|`일 경우, 홀 수번째 아이스크림 몸통은 기본 아이스크림 몸통 `| |`출력
```swift
    var oddIceCreamBody = self.iceCreamBody
    if iceCreamBody == "|0|" {
        oddIceCreamBody = "| |"
    }
```
<br>

- 아이스크림 토핑이 있을 경우, 홀수번째는 왼쪽에, 짝수번째는 오른쪽에 토핑하기

```swift
        for index in 0..<lengthOfIceCream {
            if index % 2 == 0 {
                print("\(self.topping+oddIceCreamBody)")
            } else {
                print(" \(self.iceCreamBody+self.topping)")
            }
        }
```
<br>

- 아이스크림 사이즈에 따른 막대바 위치 설정
```swift
        let spacing: Int = self.iceCreamBody.count / 2
        var spacingLength: String = ""
        let shapeOfIceCreamBar: String = "| |"
        
        for _ in 0..<spacing {
            spacingLength += " "
        }
        
        for _ in 0..<self.lengthOfIceCreamBar {
            print("\(spacingLength+shapeOfIceCreamBar)")
        }
```
<br>

- 주문한 아이스크림 정보 출력
```swift 
        print("""

              <정보>
              길이: \(lengthOfIceCream)
              몸통: \(iceCreamBody)
              토핑: \(topping)
              막대길이: \(lengthOfIceCreamBar)
              
              """)
```

<br><br>


# 참고
[야곰 아카데미 스타터 캠프](https://www.yagom-academy.kr/camp)
