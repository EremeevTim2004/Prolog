(deffacts students
   (student "Ivan" 1)
   (student "Anna" 2)
   (student "Oleg" 3)
   (student "Maria" 4))

(reset)
(facts)  ; Просмотр списка фактов

(retract 2)  ; Удаляем факт с индексом 2
(facts)  ; Проверяем результат

(modify 3 (kurs 5))  ; Меняем курс в факте с индексом 3 на 5
(facts)  ; Проверяем результат
