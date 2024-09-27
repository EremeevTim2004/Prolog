;; 1.1. Создадим файл, содержащий три неупорядоченных факта client
(deffacts clients
    (client (name Иванов) (in 101) (citi Москва))
    (client (name Петров) (in 102) (citi Санкт-Петербург))
    (client (name Сидоров) (in 103) (citi Новосибирск))
)

;; 1.2. Загрузим факты и изменим нужные значения
(load-facts "clients.clp")
;; Изменим значение слота citi в факте с индексом 1
(modify 1 (citi Казань))
;; Изменим фамилию в факте с индексом 2
(modify 2 (name Смирнов))
;; Дублируем факт f-3, изменив in
(assert (client (name Сидоров) (in 104) (citi Новосибирск)))

;; 1.3. Сохраним измененный список фактов
(save-facts "updated_clients.clp")

;; 2.1. Загрузим полученный список фактов
(load-facts "updated_clients.clp")

;; 2.2. Добавим два новых факта
(assert (client (name Никифоров) (in 105) (citi Владивосток)))
(assert (client (name Макаров) (in 106) (citi Самара)))

;; 2.3. Удалим факты с индексами 1 и 3
(retract 1)
(retract 3)

;; 2.4. Просмотрим результат и сохраним список в новый файл
(facts)
(save-facts "final_clients.clp")