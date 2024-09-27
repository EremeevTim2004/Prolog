(defrule zachisl
    =>
    (printout t "Введите количество студентов: " crlf)
    (bind ?count (read))
    (loop-for-count ?i ?count
        (printout t "Введите ФИО студента: " crlf)
        (bind ?fio (read))
        (assert (student ?fio 1))
        (printout t "Добавлен факт: (student " ?fio " 1)" crlf)
    )
)

(defrule spisok_sotr
    =>
    (printout t "Введите количество сотрудников: " crlf)
    (bind ?count (read))
    (loop-for-count ?i ?count
        (printout t "Введите ФИО сотрудника: " crlf)
        (bind ?fio (read))
        (printout t "Введите должность сотрудника: " crlf)
        (bind ?dolzhnost (read))
        (assert (sotrudnik ?fio ?dolzhnost))
        (printout t "Добавлен факт: (sotrudnik " ?fio " " ?dolzhnost ")" crlf)
    )
)

(defrule factorial
    =>
    (printout t "Введите число для вычисления факториала: " crlf)
    (bind ?n (read))
    (bind ?result 1)
    (loop-for-count ?i ?n
        (bind ?result (* ?result (+ ?i 1))))
    (printout t "Факториал " ?n " = " ?result crlf)
)

(defrule factorial
    =>
    (printout t "Введите число для вычисления факториала: " crlf)
    (bind ?n (read))
    (bind ?result 1)
    (loop-for-count ?i ?n
        (bind ?result (* ?result (+ ?i 1))))
    (printout t "Факториал " ?n " = " ?result crlf)
)

(defrule summa
    =>
    (printout t "Введите число n для вычисления суммы: " crlf)
    (bind ?n (read))
    (bind ?S 0)
    (loop-for-count ?i ?n
        (bind ?S (+ ?S (/ 1 (* (expt (+ ?i 1) 2) 2)))))
    (printout t "Сумма S = " ?S crlf)
)


(defrule bank
    =>
    (printout t "Введите первоначальную сумму вклада (S0): " crlf)
    (bind ?S0 (read))
    (printout t "Введите процентную ставку (p%): " crlf)
    (bind ?p (read))
    (bind ?S ?S0)
    (bind ?years 0)
    (while (< ?S (* ?S0 2))
        (bind ?S (+ ?S (* ?S (/ ?p 100))))
        (bind ?years (+ ?years 1)))
    (printout t "Через " ?years " лет сумма вклада превысит первоначальную в два раза." crlf)
)

(defrule nod
    =>
    (printout t "Введите первое число: " crlf)
    (bind ?a (read))
    (printout t "Введите второе число: " crlf)
    (bind ?b (read))
    (while (<> ?a ?b)
        (if (> ?a ?b)
            then (bind ?a (- ?a ?b))
            else (bind ?b (- ?b ?a))))
    (printout t "Наибольший общий делитель: " ?a crlf)
)
