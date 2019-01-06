drop table if exists lottery_item;

/*==============================================================*/
/* Table: lottery_item                                          */
/*==============================================================*/
create table lottery_item
(
   id                   varchar(40),
   lottery_name         varchar(20),
   lottery_rate         double,
   create_time          datetime,
   update_time          datetime,
   project_id           varchar(40)
);
