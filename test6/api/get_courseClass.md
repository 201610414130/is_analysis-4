## get_courseClass API

    检查ISBN存在性,以防止重复创建书籍

- HTTP动词,请求方式及地址(该地址表示从项目根地址出发)
 
    同步 GET /get_courseClass

- 请求参数
 
    |请求参数|必选|描述|
    |:-------:|:---:|:-----|
    |studentID|TURE|学号|

- 返回参数
 
    |返回参数|描述|
    |:-------:|:-----|
    |title|返回项标题|
    |message|返回的服务器信息(ture:正确,<br>false:错误,<br>InternalERROR:内部错误)|
    |courseClass|开课班的json字符串|

- *示例*
    - **Request**
        ~~~
        Content-Type: application/json
        "instituteNo" : "2015010120118"
        ~~~
    - **Response**
        ~~~
        Stauts: 200 ok
        Content-Type: application/json
        {
            "title": "update_pwd"
            "message": "ture"
            "courseClass" : {
                "courseNo": "012001"
                "cClassNo": "软件工程导论"
                "number": "34"
                "count": "34"
                "term": "20181"
                "time": "2018-06-07 00-00-18"
                "teacherNo": "012333"
            }
        }
        ~~~