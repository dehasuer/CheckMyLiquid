//Variables
//String
var isim = "Mirkelam"

var isim2 : String = "Mirkelam2"

print(isim)

isim = "Tilkilam" //reassign

print(isim)

let isim3 = "Kemal"

//isim3 = "Kemal2"

//Int

var score : Int = 5

score += 1

print(score)

//Double

var score2 : Double = 5.6

//Boolean

var dogruMu = true

//String Interpolation

let yas = 55

print("Benim yaşım \(yas)")

//Arrays

let beatles = [String]()

var beatles2 = ["John" , "Paul" , "George" , "Ringo"]

print(beatles2[1])

beatles2.append("Deha") //Array'e eleman ekleme

print(beatles2)

beatles2.insert("Miko", at: 1) //Array'in belli bir indeksine eleman ekleme

print(beatles2)

beatles2.remove(at: 1) //Array'in belli bir indeksini çıkarma

print(beatles2)

//beatles2.removeAll() //Array'in tüm elemanlarını çıkarır.

//print(beatles2)

//beatles2.removeFirst()

//print(beatles2)

//beatles2.removeLast()

//print(beatles2)

beatles2 += ["Ali"]

print(beatles2)


//Sets

var colors = Set(["kırmızı" , "mavi" , "sarı" , "pembe" , "pembe"])

print(colors)


//Tuples

var names = (first: "Taylor" , last: "Swift")

print(names.first)
print(names.0)
print(names)


//Aritmetic Operators

// - çıkarma

// + toplama

// / bölme

// * çarpma

// % kalan

var firstScore = 12
var lastScore = 5

let total = firstScore + lastScore
print(total)

let total2 = firstScore - lastScore
print(total2)

let total3 = firstScore / lastScore
print(total3)

let total4 = firstScore * lastScore
print(total4)

let total5 = firstScore % lastScore
print(total5)

let nameOne = "Mirkelam"

let lastName = "Taldari"

let isimSoyisim = nameOne + lastName
print(isimSoyisim)

let topçular = ["Joao Pedro" , "Plea" , "Arda Güler"]

let yedekTopçular = ["Tisserand" , "Crespo" , "Arda Turan"]

let takım = topçular + yedekTopçular
print(takım)
//Karşılaştırma Operatörleri

let c = 3
let e = 5

print(c>e)
print(c != e)



//if else yapıları

let a = 8
let b = 8

if a > b {
    print("a, b'den büyüktür")
}else if a == b{
    print("a ile b eşittir")
}else{
    print("b, a'dan büyüktür")
}


//Ternary Operator

let firstCard = 11
let secondCard = 10

if firstCard == secondCard {
    print("Cards are same")
}else{
    print("Cards are different")
}

print(firstCard == secondCard ? "Cards are same" : "Cards are different")
 

//Switch case

let weather = "sunny"

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear glasses")
default:
    print("Enjoy your day!")
}

let skor = 84

switch skor {
case 0..<50:
    print("You failed")
case 50..<85:
    print("Allright")
default:
    print("You passed")
}


