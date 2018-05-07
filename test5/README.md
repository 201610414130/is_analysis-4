# 实验五图书管理系统数据库设计与界面设计
## 5.1 数据库设计说明
<span style="color:#f00">root:</span>***由于其存在唯一,不给它单独一个数据库的表进行存放,直接存在配置文件内***
user与bookMenu与bookinfo不是数据库对象,不存数据库
~~~
    1. 一共涉及到8张表
    2. 分别是:
        a. 借阅者--borrower
        b. 管理员--admin
        c. 书籍--book
        d. 借书单--bookDeList
        e. 借书详单--bookDeListInfo
        f. 借书历史--borrowHis
        g. 借书历史详单--borrowHisInfo
        h. 罚单--ticket
    3. 以MySQL5.7版本的数据库为基础设计,PK表示主键,FK表示外键,N表示否,Y表示是
    4. bookDeListInfo与borrowHisInfo在对象图中对应同一对象(所存储数据完全相同,但持久化时不适合存储到同一表内)
~~~
## 5.2数据库设计
### 5.2.1 借阅者--borrower表
|字段|类型|主键，外键|可以为空|约束|说明|
|:-------:|:-------------:|:------:|:----:|:---:|:-----|
|ID|varchar(15)|PK|N|||
|pwd|varchar(20)||N|||
|createTime|datetime||N||
|status|tinyint||N||
|firstName|varchar(10)||Y||
|lastName|varchar(10)||Y||
|IDCardNo|varchar(18)||Y||
|email|varchar(25)||Y||
|m_phoneNumber|varchar(15)||Y||
|creditRating|varchar(4)||N||

### 5.2.2 管理员--admin表
|字段|类型|主键，外键|可以为空|约束|说明|
|:-------:|:-------------:|:------:|:----:|:---:|:-----|
|ID|varchar(15)|PK|N|||
|pwd|varchar(20)||N|||
|createTime|datetime||N||
|status|tinyint||N||
|firstName|varchar(10)||Y||
|lastName|varchar(10)||Y||
|email|varchar(25)||Y||
|root|bit||N||

### 5.2.3 书籍--book
|字段|类型|主键，外键|可以为空|约束|说明|
|:-------:|:-------------:|:------:|:----:|:---:|:-----|
|ISBN|varchar(13)|PK|N||
|name|varchar(100)||N||
|Label|varchar(50)||N||
|logo|varchar(100)||Y||
|info|varchar(150)||Y||
|price|float||N||
|publisher|varchar(50)||N||
|author|varchar(50)||N||
|publishDate|datetime||N||
|stock|smallint||N||
|Number|smallint||N||

### 5.2.4 借书单--bookDeList
|字段|类型|主键，外键|可以为空|约束|说明|
|:-------:|:-------------:|:------:|:----:|:---:|:-----|
|ID|varchar(16)|PK|N||
|borrower_ID|varchar(15)|FK|N||
|borrowDate|datetime||N||
|deadline|smallint||N||
|status|tinyint||N||

### 5.2.5 借书详单--bookDeListInfo
|字段|类型|主键，外键|可以为空|约束|说明|
|:-------:|:-------------:|:------:|:----:|:---:|:-----|
|ID|int|PK|N||自增|
|ISBN|varchar(13)|FK|N||
|number|smallint||N||

### 5.2.6 借书历史--borrowHis
|字段|类型|主键，外键|可以为空|约束|说明|
|:-------:|:-------------:|:------:|:----:|:---:|:-----|
|ID|varchar(16)|PK|N||
|borrower_ID|varchar(15)|FK|N||
|borrowDate|datetime||N||
|returnDate|datetime||Y||
|deadline|smallint||N||
|status|tinyint||N||
|flag|bit|N|||

### 5.2.7 借书历史详单--borrowHisInfo
|字段|类型|主键，外键|可以为空|约束|说明|
|:-------:|:-------------:|:------:|:----:|:---:|:-----|
|ID|int|PK|N||自增|
|ISBN|varchar(13)|FK|N||
|number|smallint||N||

### 5.2.8 罚单--ticket
|字段|类型|主键，外键|可以为空|约束|说明|
|:-------:|:-------------:|:------:|:----:|:---:|:-----|
|ID|int|PK|N||自增|
|bookDeList_ID|varchar(16)|FK|N||
|title|varchar(20)||N||
|info|varchar(200)||N||
|admin_ID|varchar(15)|FK|N|||
### 5.2.9 书类--lable
|字段|类型|主键，外键|可以为空|约束|说明|
|:-------:|:-------------:|:------:|:----:|:---:|:-----|
|ID|int|PK|N||自增|
|info|varchar(50)||N||
## 5.3 界面设计
### 5.3.1 书目管理
#### (1)书目管理--添加书籍
![书目管理--添加书籍界面](../out/test5/addbook.PNG)
#### (2)对应API