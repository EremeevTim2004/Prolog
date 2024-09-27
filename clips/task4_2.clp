(deffacts tovari
    (tovar Телевизор 30000 2 2009 Китай)
    (tovar Холодильник 45000 5 2023 Россия)
    (tovar Пылесос 15000 3 2015 Германия)
    (tovar Стиральная_машина 50000 1 2008 Россия)
    (tovar Микроволновка 10000 4 2023 США)
)

(defrule ucenka-tovarov
    (tovar ?name ?cena ?kolvo ?god ?strana)
    (or (test (< ?god 2010))
        (test (< ?kolvo 4)))
    =>
    (bind ?ucenka (* ?cena 0.15))
    (assert (ucenka ?name ?ucenka))
    (printout t "Товар " ?name " уценен на: " ?ucenka crlf)
)

(defrule nacenka-importnih-tovarov
    (tovar ?name ?cena ?kolvo ?god ?strana)
    (test (= ?god 2023))
    (not (test (eq ?strana "Россия")))
    =>
    (bind ?nacenka (* ?cena 0.07))
    (assert (nacenka ?name ?nacenka))
    (printout t "Товар " ?name " получил доп. наценку: " ?nacenka crlf)
)

(defrule tovari-rossiyskogo-proizvodstva
    (tovar ?name ?cena ?kolvo ?god Россия)
    =>
    (printout t "Товар " ?name " является товаром российского производства." crlf)
)