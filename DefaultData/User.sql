USE [HomeWork]
GO
SET IDENTITY_INSERT [dbo].[user] ON 

INSERT [dbo].[user] ([id], [name], [email], [password], [created_time], [updated_time], [deleted_time], [token]) VALUES (1, N'Admin', N'admin@kingston.com.tw', N'+tM9CKMdu6VW+Yve5ufqXFUSku5Cqt2f9XDA8AAbzBQ=', CAST(N'2025-03-19T15:50:10.6666667' AS DateTime2), CAST(N'2025-03-23T14:52:00.1233333' AS DateTime2), NULL, N'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJNYXBNYXJrZXIiLCJzdWIiOjEsInJvbGUiOm51bGwsImF1ZCI6Ik1hcE1hcmtlcldlYiIsImV4cCI6MTc0Mjc5OTExOSwibmJmIjoxNzQyNzEyNTM5LCJpYXQiOjE3NDI3MTI1MzksImp0aSI6IjU5YzYwNzQ5LTg0OWYtNDVhMy05MzUzLWJiMzNiZTY4ZjMzYSJ9.ZsEMeOtqc63RZsoOhNzvgcqebFolu-Pz7Vmle0unTIW1_4X5hBj-sKRNTIC6iGyVt3qowaX1LF8hBLP8e9QnYA49XF9vkI0p_RhW_pisI0x7Dgy3ElBlZ1OU6IGWSRzITwOaE9kNJLjdLag_pbhrry54wdgYLeGS5kvqPoKrXlQmmPC2kx1PNb7HvrDO0Y5L-lGQ9wAiY14kBCkOvqglkZ-fSF7T2pXEgPFI9x7K8Cq6_tfOHSVApldVyigJdeiVVFHWjsUAX6EI0J-jFnZhgggbfQ_6F_VM-RUfFAl8FZtaGm4VVjrRnJM0gpjrEqr0_TpUFqzet2sn1MQ6-l8YhA')

SET IDENTITY_INSERT [dbo].[user] OFF
GO
