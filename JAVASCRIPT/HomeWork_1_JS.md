## _HOMEWORK 1_



***// 1. Создать переменную “item_1”  
// 2. Присвоить переменной item_1 цифру 5.  
// 3. Вывести в консоль item_1.***
```sh
let item_1 = 5;
console.log(item_1);
```

***// 4. Создать переменную “item_2”  
// 5. Присвоить переменной item_2 цифру 3.  
// 6. Вывести в консоль item_2.***
```sh
let item_2 = 3;
console.log(item_2);
```

***// 7. Создать переменную “item_3”  
// 8. Присвоить переменной item_3 сложение item_1 и item_2.  
// 9. Вывести в консоль item_3.***
```sh
let item_3 = item_1 + item_2;
console.log(item_3);
```

***// 10. Создать переменную “item_4”  
// 11. Присвоить переменной item_4 строку “Yolochka”  
// 12. Вывести в консоль item_4.***
```sh
let item_4 = "Yolochka";
console.log(item_4);
```

***// 13. Вывести в консоль сложение item_3 и item_4.***
```sh
console.log(item_3 + item_4);
```

***// 14. Вывести в консоль умножение item_3 и item_4.***
```sh
console.log(item_3 * item_4);
```

***// 15. Создать переменную “item_5”  
// 16. Присвоить переменной item_5 переменную item_3***
```sh
let item_5 = item_3;
```

***// 17. Создать переменную item_6.  
// 18. Создать переменную item_6_type  
// 19. Присвоить переменной item_6 значение 15  
// 20. Присвоить переменной item_6_type тип переменной item_6***
```sh
let item_6 = 15;
let item_6_type = typeof(item_6);
```

***// 21. Вывести в консоль тип данных item_6 в виде ——  “item_6 == ”  item_6,  “item_6_type == ”  item_6_type ——***   
```sh
let item_6t = typeof(item_6);
console.log("item_6 ==" ,item_6t);
console.log("item_6_type ==" ,item_6_type);
```

***// 22. Создать переменную item_7 и в ней преобразовать item_6 в String.***
```sh
let item_7 = String(item_6);
```

***// 23. Создать переменную item_7_type  
// 24. Присвоить переменной item_7_type тип переменной item_7***
```sh
let item_7_type = typeof(item_7);
```

***//25. Вывести в консоль тип данных item_7 в виде ——  “item_7 == ”  item_7,  “item_7_type == ”  item_7_type ——*** 
```sh
let item_7t = typeof(item_7);
console.log("item_7 ==" ,item_7t);
console.log("item_7_type ==" ,item_7_type);
```

***// 26. Создать переменную “age_1” и присвоить ей значение 10  
// 27. Создать переменную “age_2” и присвоить ей значение 18  
// 28. Создать переменную “age_3” и присвоить ей значение 60***
```sh
let age_1 = 10
let age_2 = 18
let age_3 = 60
```

***// 29. Создать if в котором будите проверять значение переменной age_1  
// 30. Если age_1 < age_2, вывести в консоль “You don’t have access cause your age is ” + age_1 + “ It’s less then ”  
// 31. Если age_1 >=  age_2 и age_1 <  age_3, вывести в консоль “Welcome  !”  
// 32. Если age_1  > age_3, вывести в консоль “Keep calm and look Culture channel”.  
// 33. Иначе выводите “Technical work”.***
```sh
 if (age_1 < age_2) {
     console.log(" You don’t have access cause your age is " + age_1 + " It’s less then " + age_2)
 }    
     else if (age_1 >=  age_2 && age_1 <  age_3){
          console.log("Welcome  !")
       } 
     else if (age_1  > age_3){
         console.log("Keep calm and look Culture channel")  
     }
     else {
         console.log("Technical work")
     }
```
***//HW_1*\***   
***// Задания с разным количеством звездочек:)***
***// 1*\***:  
***// Преобразовать написанный код в 26-33 пунктах в функцию, принимающую на вход возраст.  
// Пример: const checkAge = function(age) {  
// Ваши преобразования  
// }  
// Вывести в консоль результат работы функции с возрастами 17, 18, 61***
```sh
const checkAge = function(age) {
 if (age < age_2) {
     console.log(" You don’t have access cause your age is " + age + " It’s less then " + age_2)
 }    
     else if (age >=  age_2 && age <  age_3){
          console.log("Welcome  !")
       } 
     else if (age  > age_3){
         console.log("Keep calm and look Culture channel")  
     }
     else {
         console.log("Technical work")
     }
 }
 checkAge(17)
 checkAge(18)
 checkAge(61)
```
***// 2*:\***  
***// Преобразовать задание 1* таким образом, чтобы первым делом в функции проверялся тип данных. И если он не Number - кидалась ошибка.***
```sh
 const checkAge = function(age) {
     if (typeof age == "number"){
      if (age < age_2) {
         console.log(" You don’t have access cause your age is " + age + " It’s less then " + age_2)
     }    
         else if (age >=  age_2 && age <  age_3){
              console.log("Welcome  !")
           } 
         else if (age  > age_3){
             console.log("Keep calm and look Culture channel")  
         }
         else {
             console.log("Technical work")
         }
     } else {console.log("Not integer")}
 }
     checkAge(17)
     checkAge(18)
     checkAge("rt")
```
***// 3**\***:  
***// Преобразовать 2* таким образом, чтобы значение '2' (строка в которой лежит ТОЛЬКО ЦИФРА) пропускалось, преобразовываясь в number***
```sh
 const checkAge = function(age) {   
     if (+age) {    
     if (age < age_2) {
         console.log(" You don’t have access cause your age is " + age + " It’s less then " + age_2)
     }    
         else if (age >=  age_2 && age <  age_3){
              console.log("Welcome  !")
           } 
         else if (age  > age_3){
             console.log("Keep calm and look Culture channel")  
         }
         else {
             console.log("Technical work")
         }
     } else { console.log("Wrong number!")}
 }
     checkAge(17)
     checkAge(18)
     checkAge("34")
 ```
 
***// 4***:\***  
***// Преобразовать задание 3* таким образом, чтобы возраст вводится используя функцию prompt в привязанной верстке***
```sh
const checkAge = function(age) {
    
    if (+age) {
    
    if (age < age_2) {
        alert(" You don’t have access cause your age is " + age + " It’s less then " + age_2)
    }    
        else if (age >=  age_2 && age <  age_3){
            alert("Welcome  !")
          } 
        else if (age  > age_3){
            alert("Keep calm and look Culture channel")  
        }
        else {
            alert("Technical work")
        }
    } else { alert("Wrong number!")}
}
    checkAge(17)
    checkAge(18)
    checkAge("34")
   let agePrompt = prompt('Enter age')
   checkAge(agePrompt)
   ```
   ***// Привязанная верстка к заданию 4***\***
   ```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="./HW_js_1.js" ></script>
    <title>Document</title> 
</head>
<body>
    
</body>
</html>
```