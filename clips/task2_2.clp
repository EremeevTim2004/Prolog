(deffacts poezda
   (poezd 101 "Moscow" "08:00")
   (poezd 102 "Saint Petersburg" "09:30")
   (poezd 103 "Kazan" "11:45"))

(reset)
(facts)  ; Просмотр списка фактов

(assert (poezd 104 "Novosibirsk" "12:15"))
(assert (poezd 105 "Yekaterinburg" "14:00"))
(facts)  ; Проверка добавленных фактов

(retract 1)  ; Удаляем факт с индексом 1
(retract 4)  ; Удаляем факт с индексом 4
(facts)  ; Проверяем результат

(modify 2 (время_отправления "10:00"))  ; Меняем время отправления для поезда с индексом 2
(modify 3 (время_отправления "12:30"))  ; Меняем время отправления для поезда с индексом 3
(facts)  ; Проверяем результат
