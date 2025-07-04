--city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte 
--görebileceğimiz LEFT JOIN sorgusunu yazınız.
select city.city, country.country from country
left join city on city.country_id = country.country_id;

--customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki 
--first_name ve last_name isimlerini birlikte görebileceğimiz RIGHT JOIN sorgusunu yazınız.
select payment.payment_id, customer.first_name, customer.last_name from customer
right join payment on customer.customer_id = payment.customer_id;

--customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name 
--isimlerini birlikte görebileceğimiz FULL JOIN sorgusunu yazınız.
select rental.rental_id, customer.first_name, customer.last_name from rental
full outer join customer on customer.customer_id = rental.customer_id;
