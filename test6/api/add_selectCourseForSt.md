## add_selectCourseForSt API

    检查ISBN存在性,以防止重复创建书籍

- HTTP动词,请求方式及地址(该地址表示从项目根地址出发)
 
    同步 POST /add_selectCourseForSt

- 请求参数
 
    |请求参数|必选|描述|
    |:-------:|:---:|:-----|
    |S_C|TURE|课程信息|

- 返回参数
 
    |返回参数|描述|
    |:-------:|:-----|
    |title|返回项标题|
    |message|返回的服务器信息(ture:正确,<br>false:错误,<br>InternalERROR:内部错误)|

- *示例*
    - **Request**
        ~~~
        Content-Type: application/json
        {
            "course" : {
                "courseNo": "20150101201"
                "cClassNo": "201820015"
                "studentID": "2015010120118"
                "score": "97.6"
            }
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