увлекается ("Катя", теннис).
увлекается ("Виктор", теннис).
увлекается ("Виктор", хоккей).
увлекается ("Андрей", хоккей).
увлекается ("Олег", хоккей).
увлекается ("Ольга", теннис).
увлекается ("Катя", шахматы).
увлекается ("Олег", шахматы).

увлекается_Андрей(Чем):-увлекается("Андрей", Чем).

увлекаются_шахматами(Кто):-увлекается(Кто, шахматы).

увлекаются_Ольга_и_Виктор(Чем):-увлекается("Ольга", Чем), увлекается("Виктор", Чем).

увлекается_и_хоккеем_и_шахматами(Кто):-увлекается(Кто, хоккей), увлекается(Кто, шахматы).