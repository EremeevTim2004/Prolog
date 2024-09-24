% Определить максимальный элемент в списке
max_list([X], X).
max_list([H|T], Max) :- max_list(T, TailMax), Max is max(H, TailMax).
% Запрос max_list([3, 5, 7, 2], Max).

% Определить число элементов в списке
list_length([], 0).
list_length([_|T], L) :- list_length(T, N), L is N + 1.
% Запрос list_length([1, 2, 3], L).

% Определить произведение элементов списка
product_list([], 1).
product_list([H|T], Product) :- product_list(T, Rest), Product is H * Rest.
% product_list([1, 2, 3, 4], Product).

% Исключить из списка отрицательные элементы
remove_negatives([], []).
remove_negatives([H|T], R) :- H < 0, !, remove_negatives(T, R).
remove_negatives([H|T], [H|R]) :- remove_negatives(T, R).
% Запрос remove_negatives([1, -2, 3, -4], R).

% Сортировка элементов списка по возрастанию
sort_list(L, Sorted) :- sort(L, Sorted).
% sort_list([3, 1, 4, 2], Sorted).

% Построить список, включающий все элементы двух списков без повторений
union_no_duplicates(L1, L2, R) :- append(L1, L2, L), sort(L, R).
% Запрос union_no_duplicates([1, 2, 3], [3, 4, 5], R).

% Обращение списка (переворот)
reverse_list(L, Reversed) :- reverse(L, Reversed).
% Запрсо reverse_list([1, 2, 3], Reversed).

% Перевод списка чисел от 0 до 9 в список соответствующих слов
translate([], []).
translate([0|T], [zero|R]) :- translate(T, R).
translate([1|T], [one|R]) :- translate(T, R).
translate([2|T], [two|R]) :- translate(T, R).
translate([3|T], [three|R]) :- translate(T, R).
translate([4|T], [four|R]) :- translate(T, R).
translate([5|T], [five|R]) :- translate(T, R).
translate([6|T], [six|R]) :- translate(T, R).
translate([7|T], [seven|R]) :- translate(T, R).
translate([8|T], [eight|R]) :- translate(T, R).
translate([9|T], [nine|R]) :- translate(T, R).
% Запрос translate([1, 2, 3], R).

% Разбиение списка на два списка с минимальной разницей длины
split_list(L, A, B) :- length(L, N), Half is N // 2, length(A, Half), append(A, B, L).
% Запрос split_list([1, 2, 3, 4, 5], A, B).

% Пересечение двух списков
intersection_list([], _, []).
intersection_list([H|T], L2, [H|R]) :- member(H, L2), intersection_list(T, L2, R).
intersection_list([_|T], L2, R) :- intersection_list(T, L2, R).
% Запрос intersection_list([1, 2, 3], [2, 3, 4], R). 

% Разность двух списков
difference_list([], _, []).
difference_list([H|T], L2, [H|R]) :- \+ member(H, L2), difference_list(T, L2, R).
difference_list([_|T], L2, R) :- difference_list(T, L2, R).
% Запрос difference_list([1, 2, 3], [2, 3, 4], R).

% Произведение соответствующих элементов двух списков
element_mult([], [], []).
element_mult([H1|T1], [H2|T2], [H3|T3]) :- H3 is H1 * H2, element_mult(T1, T2, T3).
% Запрсо element_mult([1, 2, 3], [4, 5, 6], R).