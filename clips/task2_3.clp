(deffacts sotrudniki
   (sotrudnik "Petrov Ivan" "Finance")
   (sotrudnik "Sidorov Alexey" "HR")
   (sotrudnik "Ivanova Maria" "IT")
   (sotrudnik "Fedorova Anna" "Marketing"))

(reset)
(facts)  ; Просмотр списка фактов

(retract 1)  ; Удаляем факт с индексом 1
(facts)  ; Проверяем результат

(modify 3 (fio "Smirnov Sergey"))  ; Меняем ФИО в факте с индексом 3
(facts)  ; Проверяем результат
