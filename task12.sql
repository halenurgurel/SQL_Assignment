--film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?
select Count(*) from film
where length > 
(select avg(length) from film);

--film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?
select count (*) from film
where rental_rate =
(select max(rental_rate) from film);

--film tablosunda en düşük rental_rate ve en düşün replacement_cost değerlerine sahip filmleri sıralayınız.
select count (*) from film
where rental_rate =
(select min(rental_rate) from film)
and 
replacement_cost = 
(select min(replacement_cost) from film);

--payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.
SELECT c.customer_id, c.first_name, c.last_name, COUNT(p.payment_id) AS odeme_sayisi FROM payment p
JOIN customer c ON p.customer_id = c.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY odeme_sayisi DESC;