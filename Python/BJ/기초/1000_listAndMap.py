import math # math.ceil 함수

#정수 반환
result = list(map(int,[1.1,2.2,3.3,4.4,5.5]))
print(f'정수반환 : {result}')


#리스트 값 제곱
def func_pow(x):
    # x의 5 제곱을 반환
    return pow(x,5)
    
result1 = list(map(func_pow, [1,2,3,4,5]))
print(f'리스트: {result1}')


#소수점 올림
result2 = list(map(math.ceil, [1.1,2.2,3.3,4.4,5.5,6.6]))
print(f'소수점 올림: {result2}')


#람다와 map

def func_mul(x):
    return x * 2

result3 = list(map(func_mul, [5,4,3,2,1]))
print(f'일반 함수 : {result3}')

#람다 함수 이용
result4 = list(map(lambda x: x*2, [5,4,3,2,1]))
print(f'람다함수 : {result4}')


