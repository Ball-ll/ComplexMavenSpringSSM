CREATE DATABASE `sys`;
USE invoicingmanagement_db;

/*用户信息表*/
DROP TABLE IF EXISTS users_info;
CREATE TABLE users_info
(
   users_id             VARCHAR(100),/*用户id*/
   users_zhanghao       VARCHAR(100) UNIQUE,/*用户账号*/
   users_pws            VARCHAR(100),/*用户密码*/
   users_name           VARCHAR(100),/*用户姓名*/
   users_sex            VARCHAR(100),/*用户性别*/
   users_birth          DATE,/*用户出身年月*/
   users_mail           VARCHAR(100),/*用户邮箱*/
   users_phone          VARCHAR(100)/*用户电话*/
)

/*用户部门信息表*/
DROP TABLE IF EXISTS users_bumen;
CREATE TABLE users_bumen
(
   users_bumen_id               VARCHAR(100),/*用户部门id*/
   users_bumen_name             VARCHAR(100),/*部门名称*/
   users_bumen_gonghao          VARCHAR(100) UNIQUE,/*用户工号*/
   users_bumen_ruzhitime        DATE,/*入职时间*/
   users_bumen_zhiwu            VARCHAR(100),/*用户职务*/
   users_name                   VARCHAR(100)/*用户名*/
)
/*用户登陆表*/
DROP TABLE IF EXISTS users_dl;
CREATE TABLE users_dl
(
   users_dl_id              VARCHAR(100),/*登陆id*/
   users_dl_zhanghao        VARCHAR(100),/*用户登陆账号*/
   users_dl_time            DATE,/*登陆时间*/
   users_zc_time            DATE/*注册时间*/
)
/*商品信息表*/
DROP TABLE IF EXISTS shop_info;
CREATE TABLE shop_info
(
   shop_id               VARCHAR(100),/*商品id*/
   shop_name             VARCHAR(100) UNIQUE,/*商品名*/
   shop_isbn             VARCHAR(100) UNIQUE,/*商品isdn编码*/
   shop_produced_time    DATE,/*商品生产日期*/
   shop_guarantee_time   DATE,/*商品保质期*/
   shop_price            VARCHAR(100),/*商品单价*/
   shop_kucun            INT/*商品库存*/
)
/*商品来源表*/
DROP TABLE IF EXISTS shop_from;
CREATE TABLE shop_from
(
   shop_from_id                   VARCHAR(100),/*商品提供商id*/
   shop_from                      VARCHAR(100),/*商品提供商*/
   shop_name                      VARCHAR(100),/*商品名*/
   shop_int_price                 VARCHAR(100),/*商品进价*/
   shop_int_size                  VARCHAR(100),/*商品进货数量*/
   shop_int_allprice              VARCHAR(100),/*商品进货总价*/
   shop_int_means_of_exchange     VARCHAR(100),/*最后交易方式*/
   shop_int_user                  VARCHAR(100),/*进货人*/
   shop_int_time                  DATE,/*进货时间*/
   shop_int_zhouqi                VARCHAR(100),/*商品提供周期*/
   shop_int_zhangtai              VARCHAR(100)/*商品进货时状态*/
)
/*商品引入物流表*/
DROP TABLE IF EXISTS shop_logistics;
CREATE TABLE shop_logistics
(
   shop_logistics_id                    VARCHAR(100),/*物流id*/
   shop_name                            VARCHAR(100),/*商品名*/
   shop_logistics_way                   VARCHAR(100),/*物流方式（商品进货时）*/
   shop_logistics_user                  VARCHAR(100),/*物流配送人*/
   shop_logistics_user_phone            VARCHAR(100),/*配送人联系方式*/
   shop_logistics_begin_time            DATE,/*物流开始时间*/
   shop_logistics_end_time              DATE/*物流结束时间*/
)

