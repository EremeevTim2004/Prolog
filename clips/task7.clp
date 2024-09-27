;; 1. Правило для замены одного символа другим в строке
(defrule zamena-simvola
    =>
    (printout t "Введите строку: " crlf)
    (bind ?stroka (readline))
    (printout t "Введите символ для замены: " crlf)
    (bind ?old (read))
    (printout t "Введите новый символ: " crlf)
    (bind ?new (read))
    (bind ?new-stroka (replace-all-in-string ?stroka ?old ?new))
    (printout t "Новая строка: " ?new-stroka crlf)
)

(deffunction replace-all-in-string (?str ?old ?new)
    (bind ?result "")
    (loop-for-count ?i (length$ ?str)
        (bind ?current-char (nth$ (+ ?i 1) ?str))
        (if (eq ?current-char ?old)
            then (bind ?result (str-cat ?result ?new))
            else (bind ?result (str-cat ?result ?current-char))))
    ?result)

;; 2. Правило для замены всех пробелов на символ "_"
(defrule zamena-probelov
    =>
    (printout t "Введите строку: " crlf)
    (bind ?stroka (readline))
    (bind ?new-stroka (replace-all-in-string ?stroka " " "_"))
    (printout t "Строка с заменёнными пробелами: " ?new-stroka crlf)
)

;; 3. Правило для удаления всех вхождений указанной подстроки
(defrule udaleniye-podstroki
    =>
    (printout t "Введите строку: " crlf)
    (bind ?stroka (readline))
    (printout t "Введите подстроку для удаления: " crlf)
    (bind ?podstroka (readline))
    (bind ?new-stroka (remove-substring ?stroka ?podstroka))
    (printout t "Строка без подстроки: " ?new-stroka crlf)
)

(deffunction remove-substring (?str ?substr)
    (bind ?result ?str)
    (while (str-index ?substr ?result)
        (bind ?pos (str-index ?substr ?result))
        (bind ?result (str-cat (sub-string ?result 1 (- ?pos 1)) 
                               (sub-string ?result (+ ?pos (length ?substr)) (length ?result)))))
    ?result)

;; 4. Функция добавления символов * и правило для выравнивания длины строк
;; Функция добавления указанного количества символов * справа
(deffunction pad-right (?str ?char ?count)
    (bind ?result ?str)
    (loop-for-count ?i ?count
        (bind ?result (str-cat ?result ?char)))
    ?result)
;; Правило для выравнивания строк
(defrule vyravnivaniye-strok
    =>
    (printout t "Введите первую строку: " crlf)
    (bind ?stroka1 (readline))
    (printout t "Введите вторую строку: " crlf)
    (bind ?stroka2 (readline))
    (bind ?len1 (length$ ?stroka1))
    (bind ?len2 (length$ ?stroka2))
    (if (> ?len1 ?len2)
        then (bind ?stroka2 (pad-right ?stroka2 "*" (- ?len1 ?len2)))
        else (bind ?stroka1 (pad-right ?stroka1 "*" (- ?len2 ?len1))))
    (printout t "Выравненные строки: " crlf ?stroka1 crlf ?stroka2 crlf)
)

;; 5. Функция для удаления лишних пробелов
(deffunction remove-extra-spaces (?str)
    (bind ?words (explode$ ?str))
    (bind ?result "")
    (loop-for-count ?i (length$ ?words)
        (bind ?result (str-cat ?result (nth$ (+ ?i 1) ?words)))
        (if (< ?i (- (length$ ?words) 1))
            then (bind ?result (str-cat ?result " "))))
    ?result)

;; 6. Функция для зеркального отображения строки
(deffunction reverse-string (?str)
    (bind ?result "")
    (loop-for-count ?i (length$ ?str)
        (bind ?result (str-cat ?result (nth$ (- (length$ ?str) ?i) ?str))))
    ?result)

;; Пример вызова функции для зеркального отображения строки:
(defrule zerkalnoe-otobrazhenie
    =>
    (printout t "Введите строку: " crlf)
    (bind ?stroka (readline))
    (bind ?reversed (reverse-string ?stroka))
    (printout t "Зеркально отображённая строка: " ?reversed crlf)
)
