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
                "experimentNo": "01001001201801",
                "userID": "2015010120118",
                "oder": "1",
                "title": "title1",
                "info": "emmmmmm,就是介绍了啊",
                "address": "addressaaa",
                "date": "2018-06-07 00:00:18",
                "experimentclausesList": [{
                    "experimentclauseNo": "0100100120180101",
                    "title": "内容完整性",
                    "evaluate": "教师输入的评价啦...",
                    "num": "100",
                    "bili": "0.35",
                    "score": "94",
                },{
                    "experimentclauseNo": "0100100120180102",
                    "title": "格式工整",
                    "evaluate": "教师输入的评价啦...",
                    "num": "100",
                    "bili": "0.25",
                    "score": "94",
                },{
                    "experimentclauseNo": "0100100120180103",
                    "title": "算法逻辑",
                    "evaluate": "教师输入的评价啦...",
                    "num": "100",
                    "bili": "0.4",
                    "score": "94",
                },],
            },
            "experimentscores": {
                "experimentno": "01001001201801",
                "courseno": "01001001",
                "cclassno": "2018101001001012001",
                "studentid": "2015010010105",
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