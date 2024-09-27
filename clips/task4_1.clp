(deffacts sotrudniki
    (sotrudnik Иванов 10 1 50000)
    (sotrudnik Петров 4 3 60000)
    (sotrudnik Сидоров 20 2 55000)
    (sotrudnik Смирнов 5 0 65000)
    (sotrudnik Николаев 22 4 70000)
)

(defrule premia-sotrudnikov
    (sotrudnik ?name ?stazh ?deti ?oklad)
    (or (test (>= ?stazh 5))
        (test (> ?deti 2)))
    =>
    (bind ?premia (* ?oklad 0.2))
    (assert (premia ?name ?premia))
    (printout t "Сотруднику " ?name " начислена премия: " ?premia crlf)
)

(defrule vse-poluchili-premiu
    (not (sotrudnik ?name ?stazh ?deti ?oklad))
    (not (premia ?name ?premia))
    =>
    (printout t "Не все сотрудники получили премию." crlf)
)

(defrule veterany-truda
    (sotrudnik ?name ?stazh ?deti ?oklad)
    (test (> ?stazh 20))
    =>
    (printout t "Сотрудник " ?name " является ветераном труда." crlf)
)