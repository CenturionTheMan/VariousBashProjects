#!/usr/bin/env bash
#
# Systemy operacyjne 2 – laboratorium nr 5 – semestr letni 2020/2021
#
# Celem zajęć jest nabranie doświadczenia w pracy z mechanizmem łącz
# nienazwanych, wykorzystując przy tym szereg podstawowych narzędzi
# do przetwarzania danych tekstowych.
#
# Tradycyjnie nie przywiązujemy zbyt dużej wagi do środowiska roboczego.
# Zakładamy, że format i układ danych w podanych plikach nie ulega zmianie,
# ale same wartości, inne niż podane wprost w treści zadań, mogą ulec zmianie,
# a przygotowane zadania wciąż powinny działać poprawnie (robić to, co trzeba).
#
# Wszystkie chwyty dozwolone, ale w wyniku ma powstać tylko to, o czym jest
# mowa w treści zadania – nie generujemy żadnych dodatkowych plików pośrednich.
#

#
# Zadanie 4.
# Analizując zawartość pliku `dodatkowe/ps-aux`, który zawiera przykładową
# listę uruchomionych procesów (wynik komendy `ps aux`), określić nazwy
# użytkowników, mających aktualnie uruchomione jakieś procesy.
# Nazwy użytkowników znajdują się w pierwszej kolumnie w pliku.
# Proszę pamiętać o pominięciu nagłówka z nazwami kolumn.
# Wyświetlić same nazwy, bez powtórzeń.
#

# 1. cat - get text from file
# 2. tail -n +2 - get text from second line to end
# 3. cut -d ' ' -f 1 - split text by space and get first part
# 4. sort - sort lines
# 5. uniq - get unique lines
cat dodatkowe/ps-aux | tail -n +2 | cut -d ' ' -f 1 | sort | uniq