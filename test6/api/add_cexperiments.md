## add_cexperiments API

    检查ISBN存在性,以防止重复创建书籍

- HTTP动词,请求方式及地址(该地址表示从项目根地址出发)
 
    同步 POST /add_cexperiments

- 请求参数
 
    |请求参数|必选|描述|
    |:-------:|:---:|:-----|
    |cexperiments|TURE|提交的已批改学生实验信息|
    |experimentscores|TURE|与需要提交学生实验信息的成绩单|

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
            "teacherNo" : 01
            "cexperiments": {
                "experimentNo": "012001201416"
                "userID": "2015010120118"
                "oder": "2"
                "title": "什么什么什么的某某"
                "info": "emmmmmm,就是介绍了啊"
                "address": "test2"
                "score": "94.5"
                "date": "2018-06-07 00-00-18"
                "experimentclauses": [{
                    "experimentclauseNo": "01200120141601"
                    "title": "内容完整性"
                    "evaluate": "教师输入的评价啦..."
                    "score": "94"
                    "experimentNo": "012001201416"
                },{
                    "experimentclauseNo": "01200120141602"
                    "title": "格式工整"
                    "evaluate": "教师输入的评价啦..."
                    "score": "95"
                    "experimentNo": "012001201416"
                },...]
            }
            "experimentscores": {
                "experimentscoresNo": "0120012014162018200152015010120118"
                "experimentNo": "012001201416"
                "courseNo": "20150101201"
                "cClassNo": "201820015"
                "studentID": "2015010120118"
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