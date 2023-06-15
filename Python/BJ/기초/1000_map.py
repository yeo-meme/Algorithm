

#map함수를 사용해야하는 이유

myList = [1,2,3,4,5]

#for 반복문
result = []
for val in myList:
    result.append(val+1)
    
    print(f'result : {result}')
    
#map 함수
def add_one(x):
    return x+1
    
resultValue = list(map(add_one,myList)) #map반환을 list로 반환

  print(f'resultValue: {resultValue}')




