отдыхает(анна, москва).
отдыхает(мария, рим).
отдыхает(ольга, санкт_петербург).
отдыхает(иван, рим).
отдыхает(петр, милан).
отдыхает(алексей, москва).

италия(рим).
италия(милан).

россия(москва).
россия(санкт_петербург).

женщина(анна).
женщина(мария).
женщина(ольга).

мужчина(иван).
мужчина(петр).
мужчина(алексей).

женщины_отдыхают_в_России(Кто):-отдыхает(Кто, Где), россия(Где), женщина(Кто).

мужчины_отдыхают_в_Италии(Кто):-отдыхает(Кто, Где), италия(Где), мужчина(Кто).