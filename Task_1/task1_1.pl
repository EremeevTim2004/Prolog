любит(“Таня”, "яблоки").
любит(“Сергей”, "бананы").
любит(“Андрей”, "яблоки").
любит(“Света”, "карамель").
любит(“Вова”, "карамель").
любит(“Таня”, "халва").
любит(“Света”, "апельсины").
любит(“Вова”, "бананы").

любит_бананы():-любит(_, "бананы").

любит_халву_и_яблоки(Кто):-любит(Кто, "халва"), любит(Кто, "яблоки").

любит_Света_и_Вова(Что):-любит("Вася", Что).

любит_Света_и_Вова(Что):-любит("Света", Что), любит("Вова", Что).