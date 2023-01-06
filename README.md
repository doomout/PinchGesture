# 핀치 제스처

핀치 제스처란? 두 손가락으로 화면 확대/축소를 할 때 사용하는 이벤트     

스위프트 문법   if, switch 문 비교       

  
1-1. 조건이 하나일 때(if 문)             

var grade = "A"     

if grade == "A" {       
    print("당신의 학점은 A입니다.")      
} else if grade == "B" {        
    print("당신의 학점은 B입니다.")      
} else if grade == "C" {        
    print("당신의 학점은 C입니다.")      
} else if grade == "D" {        
    print("당신의 학점은 D입니다.")      
} else {        
    print("당신의 학점은 F입니다.")      
}       
결과 : 당신의 학점은 A입니다.   

1-2 조건이 하나일 때(switch 문)     

switch grade {      
    case "A" :      
        print("당신의 학점은 A입니다.")      
    case "B" :      
        print("당신의 학점은 B입니다.")      
    case "C" :      
        print("당신의 학점은 C입니다.")      
    case "D" :      
        print("당신의 학점은 D입니다.")      
    default :       
        print("당신의 학점은 F입니다.")      
}       

2. 조건이 두 가지일 때(if 문)  

var grade = "A"   

if grade == "A" || grade == "B" {   
    print("우수한 학생입니다.")     
} else if grade == "C" || grade == "D" {        
    print("조금 더 분발하세요.")        
} else {        
    print("내년에 다시 재수강하세요.")     
}       

결과 : 우수한 학생입니다.    

2-1. 조건이 두 가지일 때(switch 문)      
switch grade {      
    case "A", "B" :     
        print("우수한 학생입니다.")     
    case "C", "D" :     
        print("조금 더 분발하세요.")        
    default :       
        print("내년에 다시 수강하세요.")      
}       
