//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"
let n = 10
var dtr: String = ""

switch n {
case 0...17:
    str="幼年期"
case 18...25:
    str = "青少年期"
case 26...40:
    str = "壯年期"
case 41...60:
    str = "衰老期"
default:
    str = "老年期"
}


 print(str)


