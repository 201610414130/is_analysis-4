## OUT 21:login API

    传递加密的用户账号、密码以及类型，验证登录操作

- HTTP动词,请求方式及地址(该地址表示从项目根地址出发)
 
    同步 POST /login

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
            "user"修改:此处不再返回user,改成通过session返回
        }
        ~~~