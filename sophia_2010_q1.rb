# 2010 上智大学 総合人間(社会), 法(国際関係法)学部 問1
# 次の3つの実数A,B,Cの大小関係を不等号で表せ。
# A = 100!, B = 2^600, C = 50^100

# 階乗を計算するメソッド
def factory(num)
  num > 1 ? num * factory(num - 1) : 1
end

A = factory(100)
B = 2**600
C = 50**100

if A > B && A > C
  puts if B > C ? 'A > B > C' : 'A > C > B'
elsif B > A && B > C
  puts A > C ? 'B > A > C' : 'B > C > A'
else
  puts A > B ? 'C > A > B' : 'C > B > A'
end
