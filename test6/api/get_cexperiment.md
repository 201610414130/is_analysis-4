## get_cexperiment API

    检查ISBN存在性,以防止重复创建书籍

- HTTP动词,请求方式及地址(该地址表示从项目根地址出发)
 
    同步 GET /get_cexperiment

- 请求参数
 
    |请求参数|必选|描述|
    |:-------:|:---:|:-----|
    |instituteNo|TURE|管理员的所属院系号|

- 返回参数
 
    |返回参数|描述|
    |:-------:|:-----|
    |title|返回项标题|
    |message|返回的服务器信息(ture:正确,<br>false:错误,<br>InternalERROR:内部错误)|
    |cexperiment|课程的json字符串|

- *示例*
    - **Request**
        ~~~
        Content-Type: application/json
        "instituteNo" : 01
        ~~~
    - **Response**
        ~~~
        Stauts: 200 ok
        Content-Type: application/json
        {
            "title": "update_pwd"
            "message": "ture"
            "cexperiment": [{
                "experimentNo": "012001201416"
                "oder": "2"
                "title": "什么什么什么的某某"
                "address": "test2"
                "courseNo": "012001"
                "courseName": "软件工程导论"
                "experimentclause":[{
                    "experimentclauseNo": "01200120141601"
                    "title": "内容完整性"
                    "experimentNo": "012001201416"
                },{
                    "experimentclauseNo": "01200120141602"
                    "title": "格式工整"
                    "experimentNo": "012001201416"
                },...]
            },...]
        }
        ~~~