require './lambda.rb'

#階乗
ff = ->(f){->(n){If[IsZero[n]][->(x){One}][->(x){Times[n][f[Prd[n]]]}][I]}}
fact = Fix[ff]
print "Factorial[5] = "
puts RealNum[fact[GenNum[5]]]

#フィボナッチ数
fb = ->(f){->(n){If[Or[IsZero[n]][IsZero[Prd[n]]]][->(x){One}][->(x){Plus[f[Prd[n]]][f[Prd[Prd[n]]]]}][I]}}
fib = Fix[fb]
print "Fibonacci[5] = "
puts RealNum[fib[GenNum[5]]]

