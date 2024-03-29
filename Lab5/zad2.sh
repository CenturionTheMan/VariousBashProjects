#!/usr/bin/env bash
#
# Systemy operacyjne 2 – laboratorium nr 6 – semestr letni 2020/2021
#
# Celem zajęć jest zapoznanie się z możliwościami narzędzia awk.
#
# Tradycyjnie nie przywiązujemy zbyt dużej wagi do środowiska roboczego.
# Zakładamy, że format i układ danych w podanych plikach nie ulega zmianie,
# ale same wartości, inne niż podane wprost w treści zadań, mogą ulec zmianie,
# a przygotowane zadania wciąż powinny działać poprawnie (robić to, co trzeba).
#
# Wszystkie chwyty dozwolone, ale w wyniku ma powstać tylko to, o czym jest
# mowa w treści zadania – nie generujemy żadnych dodatkowych plików pośrednich.
# Większość rozwiązań powinno sprowadzić się do jednego, zmyślnego wywołania
# programu `awk` z odpowiednimi argumentami.
# 
#

#
# Zadanie 2.
# Wiedząc, że pola w pliku `dodatkowe/etc-passwd` są rozdzielone znakiem
# dwukropka (:), proszę wyodrębnić przy użyciu programu `awk` take nazwy
# użytkowników (pierwsze pole), których identyfikator (trzecie pole)
# wynosi co najmniej 1000, a ich powłoka (siódme pole) to /bin/bash.
# Każdą nazwę użytkownika wypisać w nowej linii.
#

cat dodatkowe/etc-passwd | 
    awk -F ':' '$3 >= 1000 && $7 == "/bin/bash" {   # if 3rd field is greater or equal to 1000 and 7th field is /bin/bash
        print $1                                    # print 1st field
    }'