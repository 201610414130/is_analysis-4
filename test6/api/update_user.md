## update_user PAI
    
    检查ISBN存在性,以防止重复创建书籍

- HTTP动词,请求方式及地址(该地址表示从项目根地址出发)
 
    异步 PUT /update_user

- 请求参数
 
    |请求参数|必选|描述|
    |:-------:|:---:|:-----|
    |data|TURE|公钥加密的用户信息|
    |type|TURE|用户类型|

- 返回参数
 
    |返回参数|描述|
    |:-------:|:-----|
    |title|返回项标题|
    |message|返回的服务器信息(ture:正确,<br>false:错误,<br>InternalERROR:内部错误)|

- *示例*
    - **Request**
        ~~~
        Content-Type: application/json
        "data" : xxxxxx
        "type" : "1或2或3"
        注: xxx表示被加密了的用户信息json串,内容如下:
            data = {
                "userid" = "(用户id)"
                "Gname" = "(修改的用户名)"
            }
        ~~~
    - **Response**
        ~~~
        Stauts: 200 ok
        Content-Type: application/json
        {
            "title": "update_pwd"
            "message": "ture"
        }
        ~~~