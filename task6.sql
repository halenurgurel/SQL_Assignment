--film tablosunda bulunan rental_rate sütunundaki değerlerin ortalaması nedir?
select avg(rental_rate) from film;

--film tablosunda bulunan filmlerden kaç tanesi 'C' karakteri ile başlar?
select Count(title) from film
where title like 'C%'; --92

--film tablosunda bulunan filmlerden rental_rate değeri 0.99 a eşit olan en uzun (length) film kaç dakikadır?
select max(length) from film
where rental_rate = 0.99; -- 184

--film tablosunda bulunan filmlerin uzunluğu 150 dakikadan büyük olanlarına ait kaç farklı replacement_cost değeri vardır?
select count(distinct replacement_cost) from film
where length > 150; -- 21
