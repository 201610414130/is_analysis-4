## get_courseforCE API

    检查ISBN存在性,以防止重复创建书籍

- HTTP动词,请求方式及地址(该地址表示从项目根地址出发)
 
    同步 GET /get_courseforCE

- 请求参数
 
    |请求参数|必选|描述|
    |:-------:|:---:|:-----|
    |instituteNo|TURE|管理员的所属院系号|

- 返回参数
 
    |返回参数|描述|
    |:-------:|:-----|
    |title|返回项标题|
    |message|返回的服务器信息(ture:正确,<br>false:错误,<br>InternalERROR:内部错误)|
    |course|课程的json字符串|

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
            "course": [{
                "courseNo": "012001"
                "courseName": "软件工程导论"
                "creditHour": "2"
                "courseHour": "34"
                "priorCourse": ""
                "majorNo": "01012"
                "majorName": "软件工程"
            },...]
        }
        注: "priorCourse": ""表示没有先修课程
        ~~~