## login API

    检查ISBN存在性,以防止重复创建书籍

- HTTP动词,请求方式及地址(该地址表示从项目根地址出发)
 
    同步 GET /login

- 请求参数
 
    |请求参数|必选|描述|
    |:-------:|:---:|:-----|
    |data|TURE|公钥加密的用户id以及密码|
    |userType|TURE|用户类型|

- 返回参数
 
    |返回参数|描述|
    |:-------:|:-----|
    |title|返回项标题|
    |message|返回的服务器信息(ture:正确,<br>false:错误,<br>InternalERROR:内部错误)|

- *示例*
    - **Request**
        ~~~
        Content-Type: application/json
        "data" : "*******"
        "userType": "3"
        注: ***是公钥加密的内容,表示:
            {
                "userID": "2015010120118"
                "pwd": "(就是密码啦)"
            }
        ~~~
    - **Response**
        ~~~
        Stauts: 200 ok
        Content-Type: application/json
        {
            "title": "update_pwd"
            "message": "ture"
            "user": {
                "userID": "2015010120118"
                "name": "臧三"
                "userType": "3"
                ...(还有一些用户特有的信息)
            }
        }
        ~~~