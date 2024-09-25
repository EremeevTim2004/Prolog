(deffacts tovary
   (tovar "Laptop" "China" 50000 10)
   (tovar "Phone" "South Korea" 30000 20)
   (tovar "Tablet" "USA" 20000 15))

(reset)
(facts)  ; Просмотр списка фактов

(assert (tovar "Monitor" "Japan" 25000 12))
(assert (tovar "Printer" "Germany" 15000 8))
(facts)  ; Проверяем добавленные факты

(modify 2 (цена 32000))  ; Меняем цену для товара с индексом 2
(modify 4 (цена 26000))  ; Меняем цену для товара с индексом 4
(facts)  ; Проверяем результат

(retract 1)
(retract 2)
(retract 3)
(retract 4)
(retract 5)  ; Удаляем все факты по очереди
(facts)  ; Проверка, что фактов больше нет
