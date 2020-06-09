create table "users" (
  "id" bigint primary key generated always as identity,
  first_name varchar(50) null,
  last_name varchar(50) null,
  username varchar(100) not null,
  constraint UK_r43af9ap4edm43mmtq01oddj6
    unique (username)
);
