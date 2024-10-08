% Определяем участников (детей) и животных
ребенок(петя).
ребенок(лена).
ребенок(таня).

животное(собака).
животное(кошка).
животное(хомячок).

% Определяем отношения между детьми и животными
% Петя не может гулять с кошкой и живет в одном подъезде с хозяйкой хомячка
соответствие(петя, Животное) :- животное(Животное), Животное \= кошка, Животное = хомячок.

% Лена дружит с Таней, а Таня гуляет с кошкой
соответствие(лена, Животное) :- животное(Животное), Животное \= кошка, соответствие(таня, кошка).
соответствие(таня, кошка).

% Правило для решения задачи
решение(X1, Y1, X2, Y2, X3, Y3) :-
    соответствие(X1, Y1), % Петя
    соответствие(X2, Y2), % Лена
    соответствие(X3, Y3), % Таня
    X1 = петя, X2 = лена, X3 = таня,
    Y1 \== Y2, Y2 \== Y3, Y1 \== Y3. % все должны гулять с разными животными
