;; 1.1. Создадим файл с фактами sotrudnik
(deffacts sotrudniki
    (sotrudnik (name Иванов) (otdel IT) (st 5))
    (sotrudnik (name Петров) (otdel HR) (st 10))
    (sotrudnik (name Сидоров) (otdel Finance) (st 15))
)

;; 1.2 Загрузим и изменим факты
(load-facts "sotrudniki.clp")
;; Изменим otdel в факте с индексом 1
(modify 1 (otdel Sales))
;; Изменим стаж работы в факте с индексом 3
(modify 3 (st 20))
;; Дублируем факт f-2, изменив фамилию
(assert (sotrudnik (name Смирнов) (otdel HR) (st 10)))

;; 1.3 Сохраним измененный список фактов
(save-facts "updated_sotrudniki.clp")

;; 2.1 Загрузим измененный список фактов
(load-facts "updated_sotrudniki.clp")

;; 2.2 Добавим два новых факта
(assert (sotrudnik (name Никифоров) (otdel Logistics) (st 8)))
(assert (sotrudnik (name Макаров) (otdel IT) (st 12)))

;; 2.3 Удалим факты с индексами 2 и 4
(retract 2)
(retract 4)

;; 2.4. Просмотрим результат и сохраним список фактов в новый файл
(facts)
(save-facts "final_sotrudniki.clp")
