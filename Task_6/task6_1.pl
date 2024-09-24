% Удалить из списка указанный элемент (названия дней недели)
delete_day(X, [X|T], T) :- !.
delete_day(X, [H|T], [H|R]) :- delete_day(X, T, R).
% Запрос delete_day(понедельник, [понедельник, вторник, среда], R).

% Вставить элемент в список имен на все возможные позиции
insert_name(X, L, R) :- append(Prefix, Suffix, L), append(Prefix, [X|Suffix], R).
% Запрос insert_name(Алекс, [Иван, Петр], R).

% Найти сумму элементов списка целых чисел
sum_list([], 0).
sum_list([H|T], Sum) :- sum_list(T, Rest), Sum is H + Rest.
% Запрос sum_list([1, 2, 3, 4], Sum).

% Сформировать список [2, 4, 6, 8, 10] и удалить введенное число
delete_element(X, L, R) :- delete(L, X, R).
% Запрос delete_element(6, [2, 4, 6, 8, 10], R).

% Объединить два списка
combine_lists(L1, L2, R) :- append(L1, L2, R).
% Запрос combine_lists([1, 3, 5, 7, 9], [2, 4, 6, 8, 10], R).

% Вставить число в список [3, 6, 9, 12, 15, 18]
insert_number(X, L, R) :- insert_name(X, L, R).  % Используем ту же функцию, что и для имен.
% Запрос insert_number(10, [3, 6, 9, 12, 15, 18], R).

% Сформировать список из N натуральных чисел, начиная с 10, с шагом 5
gen_list(0, _, []) :- !.
gen_list(N, X, [X|L]) :- N1 is N - 1, X1 is X + 5, gen_list(N1, X1, L).
% Запрос gen_list(5, 10, L).

% Найти сумму элементов списка [3, 6, 9, 12, 15]
% Было написано
% sum_list([3, 6, 9, 12, 15], Sum).

% Найти сумму элементов списка [6, 5, 4, 3, 2]
% Было написано
% sum_list([6, 5, 4, 3, 2], Sum).

% Найти произведение элементов списка [7, 5, 3, 1]
product_list([], 1).
product_list([H|T], Product) :- product_list(T, Rest), Product is H * Rest.
% product_list([7, 5, 3, 1], Product).

% Сформировать список из N последовательных натуральных чисел, начиная с 10, и найти их сумму
gen_nat_list(0, _, []) :- !.
gen_nat_list(N, X, [X|L]) :- N1 is N - 1, X1 is X + 1, gen_nat_list(N1, X1, L).
% gen_nat_list(5, 10, L). и потом sum_list(L, Sum). 
