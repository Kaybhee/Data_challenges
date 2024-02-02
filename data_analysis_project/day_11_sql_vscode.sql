select *
FROM linkedin_challenge..MavenMarket_Customers$


ALTER TABLE linkedin_challenge..MavenMarket_Customers$
ADD Short_Country varchar(max)


UPDATE linkedin_challenge..MavenMarket_Customers$
SET Short_Country = PARSENAME(REPLACE(customer_country,'', '.'),4)

-- Left and Substring can also be used for same task
