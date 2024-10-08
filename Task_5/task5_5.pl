% Определяем друзей
друг(витя).
друг(юра).
друг(миша).
друг(дима).

% Определяем возможные места (1 - самое левое, 4 - самое правое)
место(1).
место(2).
место(3).
место(4).

% Определяем соответствие между друзьями и местами
соответствие(X, Y) :- друг(X), место(Y).

% Правила, задающие условия задачи
% Юра сидит справа от Димы (Юра имеет более высокий номер места, чем Дима)
правило1(Yюра, Yдима) :- Yюра > Yдима.

% Миша сидит справа от Вити (Миша имеет более высокий номер места, чем Витя)
правило2(Yмиша, Yвитя) :- Yмиша > Yвитя.

% Витя сидит справа от Юры (Витя имеет более высокий номер места, чем Юра)
правило3(Yвитя, Yюра) :- Yвитя > Yюра.

% Правило для решения задачи
решение(X1, Y1, X2, Y2, X3, Y3, X4, Y4) :-
    соответствие(X1, Y1), % Витя
    соответствие(X2, Y2), % Юра
    соответствие(X3, Y3), % Миша
    соответствие(X4, Y4), % Дима
    X1 = витя, X2 = юра, X3 = миша, X4 = дима,
    правило1(Y2, Y4),  % Юра сидит справа от Димы
    правило2(Y3, Y1),  % Миша сидит справа от Вити
    правило3(Y1, Y2),  % Витя сидит справа от Юры
    Y1 \== Y2, Y2 \== Y3, Y3 \== Y4, Y1 \== Y4, Y1 \== Y3, Y2 \== Y4. % Все места должны быть различны
