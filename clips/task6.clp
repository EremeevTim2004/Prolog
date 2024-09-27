;; 1. Функция для вычисления длины отрезка и периметра треугольника
;; Функция для вычисления длины отрезка по координатам
(deffunction distance (?a1 ?a2 ?b1 ?b2)
    (sqrt (+ (expt (- ?b1 ?a1) 2) (expt (- ?b2 ?a2) 2))))
;; Функция для нахождения периметра треугольника по координатам его вершин
(deffunction perimeter-triangle (?x1 ?y1 ?x2 ?y2 ?x3 ?y3)
    (bind ?side1 (distance ?x1 ?y1 ?x2 ?y2))
    (bind ?side2 (distance ?x2 ?y2 ?x3 ?y3))
    (bind ?side3 (distance ?x3 ?y3 ?x1 ?y1))
    (+ ?side1 ?side2 ?side3))
;; Пример использования для нахождения периметра
(defrule find-perimeter
    =>
    (printout t "Введите координаты первой вершины (x1 y1): " crlf)
    (bind ?x1 (read))
    (bind ?y1 (read))
    (printout t "Введите координаты второй вершины (x2 y2): " crlf)
    (bind ?x2 (read))
    (bind ?y2 (read))
    (printout t "Введите координаты третьей вершины (x3 y3): " crlf)
    (bind ?x3 (read))
    (bind ?y3 (read))
    (bind ?perimeter (perimeter-triangle ?x1 ?y1 ?x2 ?y2 ?x3 ?y3))
    (printout t "Периметр треугольника: " ?perimeter crlf)
)

;; 2. Функция для вычисления площади треугольника по длинам его сторон
;; Функция для нахождения площади треугольника по формулам Герона
(deffunction area-triangle (?a ?b ?c)
    (bind ?p (/ (+ ?a ?b ?c) 2))  ; Полупериметр
    (sqrt (* ?p (- ?p ?a) (- ?p ?b) (- ?p ?c))))

;; Правило для сравнения площадей двух треугольников
(defrule compare-triangle-areas
    =>
    (printout t "Введите длины сторон первого треугольника (a1 b1 c1): " crlf)
    (bind ?a1 (read))
    (bind ?b1 (read))
    (bind ?c1 (read))
    (bind ?area1 (area-triangle ?a1 ?b1 ?c1))

    (printout t "Введите длины сторон второго треугольника (a2 b2 c2): " crlf)
    (bind ?a2 (read))
    (bind ?b2 (read))
    (bind ?c2 (read))
    (bind ?area2 (area-triangle ?a2 ?b2 ?c2))

    (printout t "Площадь первого треугольника: " ?area1 crlf)
    (printout t "Площадь второго треугольника: " ?area2 crlf)

    (if (> ?area1 ?area2)
        then (printout t "Первый треугольник больше." crlf)
        else (if (< ?area1 ?area2)
            then (printout t "Второй треугольник больше." crlf)
            else (printout t "Оба треугольника имеют одинаковую площадь." crlf)))
)

;; 3. Функция для вычисления значения Y = f(X) по условию
(deffunction f-x (?x ?c ?d)
    (if (< ?x ?c)
        then (- 1 (expt ?x 2))
        else (if (and (>= ?x ?c) (< ?x ?d))
            then 0
            else (+ 1 (expt ?x 2))))
)

;; 4. Функция для вычисления значения Y = f(X) по другому условию
(deffunction f-x-abs (?x ?a)
    (if (< ?x 0)
        then (/ (abs (- ?x ?a)) (expt ?x 2))
        else (if (= ?x 0)
            then 0
            else (sin (abs (+ ?x ?a)))))
)

;; 5. Логическая функция для получения ответа "да/нет"
(deffunction yes-no-question (?question)
    (printout t ?question " (да/нет): " crlf)
    (bind ?answer (readline))
    (if (or (eq ?answer "да") (eq ?answer "Да"))
        then TRUE
        else FALSE)
)
;; Пример использования логической функции
(defrule ask-question
    =>
    (if (yes-no-question "Вы хотите продолжить?")
        then (printout t "Ответ: Да" crlf)
        else (printout t "Ответ: Нет" crlf))
)

;; 6. Рекурсивная функция для вычисления одной суммы 
(deffunction harmonic-sum (?n)
    (if (= ?n 1)
        then 1
        else (+ (/ 1 ?n) (harmonic-sum (- ?n 1))))
)
;; Пример использования
(defrule calculate-harmonic-sum
    =>
    (printout t "Введите число n: " crlf)
    (bind ?n (read))
    (bind ?sum (harmonic-sum ?n))
    (printout t "Сумма гармонического ряда: " ?sum crlf)
)

;; 7. Рекурсивная функция для вычисления второй суммы
(deffunction sum-odd-fractions (?n)
    (if (= ?n 1)
        then (/ 1 3)
        else (+ (/ 1 (+ (* 2 ?n) 1)) (sum-odd-fractions (- ?n 1))))
)
;; Пример использования
(defrule calculate-odd-fraction-sum
    =>
    (printout t "Введите число n: " crlf)
    (bind ?n (read))
    (bind ?sum (sum-odd-fractions ?n))
    (printout t "Сумма: " ?sum crlf)
)

;; 8 Рекурсивная функция для вычисления третьей суммы
(deffunction sum-half-fractions (?n)
    (if (= ?n 1)
        then (/ 1 2)
        else (+ (/ 1 2) (sum-half-fractions (- ?n 1))))
)
;; Пример использования
(defrule calculate-half-fraction-sum
    =>
    (printout t "Введите число n: " crlf)
    (bind ?n (read))
    (bind ?sum (sum-half-fractions ?n))
    (printout t "Сумма: " ?sum crlf)
)
