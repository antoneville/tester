# --- Created by Ebean DDL
# To stop Ebean DDL generation, remove this comment and start using Evolutions

# --- !Ups

create table category (
  catId                            bigint not null,
  catName                          varchar(255),
  constraint pk_category primary key (catId)
);
create sequence category_seq;

create table product (
  prodId                        bigint not null,
  catId                  	bigint not null,
  prodType			varchar(255),	
  prodName                      varchar(255),
  colour			varchar(225),
  description                   text,
  stock                         integer,
  price                         double,
  rating			varchar(255),
  constraint pk_product primary key (prodId)
);
create sequence product_seq;

create table user (
  email                         varchar(255) not null,
  role                          varchar(255),
  name                          varchar(255),
  password                      varchar(255),
  constraint pk_user primary key (email)
);

alter table product add constraint fk_product_catId foreign key (catId) references category (catId) on delete restrict on update restrict;
create index ix_product_catId on product (catId);


# --- !Downs

alter table product drop constraint if exists fk_product_catId;
drop index if exists ix_product_catId;

drop table if exists category;
drop sequence if exists category_seq;

drop table if exists product;
drop sequence if exists product_seq;

drop table if exists user;
