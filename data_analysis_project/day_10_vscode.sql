SELECT TOP (1000) [customer_id]
      ,[customer_acct_num]
      ,[first_name]
      ,[last_name]
      ,[customer_address]
      ,[customer_city]
      ,[customer_state_province]
      ,[customer_postal_code]
      ,[customer_country]
      ,[birthdate]
      ,[marital_status]
      ,[yearly_income]
      ,[gender]
      ,[total_children]
      ,[num_children_at_home]
      ,[education]
      ,[acct_open_date]
      ,[member_card]
      ,[occupation]
      ,[homeowner]
      ,[CurrentAge]
  FROM [linkedin_challenge].[dbo].[MavenMarket_Customers$]

  ALTER TABLE linkedin_challenge..MavenMarket_Customers$
  ADD PriorityEquals varchar(max)

  UPDATE linkedin_challenge..MavenMarket_Customers$
  SET PriorityEquals = CASE WHEN member_card = 'Golden' and homeowner = 'Y'
  THEN 'High'
  ELSE 'Standard'
  END;




  select *
  from linkedin_challenge..MavenMarket_Customers$
