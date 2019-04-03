drop table if exists CompanyInfo;

drop table if exists CompanyJob;

/*==============================================================*/
/* Table: CompanyInfo                                           */
/*==============================================================*/
create table CompanyInfo
(
   CompanyId            bigint not null auto_increment comment '公司ID',
   CompanyName          varchar(500) not null comment '公司名称',
   CompanyScale         varchar(500) comment '公司规模',
   CompanyNature        varchar(500) comment '公司性质',
   CompanyNetAddr       varchar(500) comment '公司在智联的地址',
   CompanyCity          varchar(500) comment '公司所在城市',
   CompanyAddr          varchar(500) comment '公司地址',
   CompanyWelfare       varchar(500) comment '福利待遇',
   CompanyInfo          varchar(6000) comment '公司简介',
   CompanyRealNetAddr   varchar(500) comment '公司自己的网址',
   primary key (CompanyId)
);

/*==============================================================*/
/* Table: CompanyJob                                            */
/*==============================================================*/
create table CompanyJob
(
   JobId                bigint not null auto_increment comment '职位ID',
   CompanyId            bigint not null comment '公司ID',
   JobName              varchar(500) not null comment '工作名称',
   JobSalary            varchar(500) comment '薪资范围',
   JobWorkingExp        varchar(500) comment '工作年限要求',
   JobType              varchar(500) comment '工作类型',
   JobArea              varchar(500) comment '工作区域',
   JobEduLevel          varchar(500) comment '最低学历要求',
   JobEmplType          varchar(500) comment '工作雇佣类型',
   JobNetAddr           varchar(500) comment '职位发布网址',
   JobCreateDate        timestamp comment '职位发布时间',
   JobUpdateDate        timestamp comment '职位更新时间',
   JobEndDate           timestamp comment '职位有效时间',
   primary key (JobId)
);

alter table CompanyJob add constraint FK_Reference_1 foreign key (CompanyId)
      references CompanyInfo (CompanyId) on delete restrict on update restrict;
