// 提交表单  
    function delete_info(id)  
    {  
        if(!id)  
        {  
            alert('Error！');  
            return false;  
        }  
        // var form_data = new Array();  
  
        $.ajax(  
                {  
                    url: "action/",  
                    data:{"id":id, "act":"del"},  
                    type: "post",  
                    beforeSend:function()  
                    {  
                        $("#tip").html("<span style='color:blue'>正在处理...</span>");  
                        return true;  
                    },  
                    success:function(data)  
                    {  
                        if(data > 0)  
                        {  
                            alert('操作成功');  
                            $("#tip").html("<span style='color:blueviolet'>恭喜，删除成功！</span>");  
  
                            // document.location.href='world_system_notice.php'  
                             location.reload();  
                        }  
                        else  
                        {  
                            $("#tip").html("<span style='color:red'>失败，请重试</span>");  
                            alert('操作失败');  
                        }  
                    },  
                    error:function()  
                    {  
                        alert('请求出错');  
                    },  
                    complete:function()  
                    {  
                        // $('#tips').hide();  
                    }  
                });  
  
        return false;  
    }  
  
    // 编辑表单  
    function get_edit_info(user_id)  
    {  
        if(!user_id)  
        {  
            alert('Error！');  
            return false;  
        }  
        // var form_data = new Array();  
  
        $.ajax(  
                {  
                    url: "action/",  
                    data:{"user_id":user_id, "act":"get"},  
                    type: "post",  
                    beforeSend:function()  
                    {  
                        // $("#tip").html("<span style='color:blue'>正在处理...</span>");  
                        return true;  
                    },  
                    success:function(data)  
                    {  
                        if(data)  
                        {  
  
                            // 解析json数据  
                            var data = data;  
  
                            var data_obj = eval("("+data+")");  
  
                            // 赋值  
                            $("#user_id").val(data_obj.user_id);  
                             
                            $("#name").val(data_obj.name);  
                            $("#address").val(data_obj.address);  
                            $("#remark").val(data_obj.remark);  
                            $("#act").val("edit");  
  
                            // 将input元素设置为readonly  
                            $('#user_id').attr("readonly","readonly")  
                           // location.reload();  
                        }  
                        else  
                        {  
                            $("#passwordTip").html("<span style='color:red'>失败，请重试</span>");  
                          //  alert('操作失败');  
                        }  
                    },  
                    error:function()  
                    {  
                        alert('请求出错');  
                    },  
                    complete:function()  
                    {  
                        // $('#tips').hide();  
                    }  
                });  
  
        return false;  
    }  
  
    // 提交表单  
    function check_form()  
    {  
        var user_id = $.trim($('#user_id').val());  
        var act     = $.trim($('#act').val());  
  
        if(!user_id)  
        {  
            alert('用户ID不能为空！');  
            return false;  
        }  
           var form_data = $('#form_data').serialize();  
  
        // 异步提交数据到action/add_action.php页面  
        $.ajax(  
                {  
                    url: "action/",  
                    data:{"form_data":form_data,"act":act},  
                    type: "post",  
                    beforeSend:function()  
                    {  
                        $("#tip").html("<span style='color:blue'>正在处理...</span>");  
                        return true;  
                    },  
                    success:function(data)  
                    {  
                        if(data > 0)  
                        {  
  
                            var msg = "添加";  
                            if(act == "edit") msg = "编辑";  
                            $("#passwordTip").html("<span style='color:blueviolet'>恭喜，" +msg+ "成功！</span>");  
                            // document.location.href='system_notice.php'  
                            alert(msg + "OK！");  
                            location.reload();  
                        }  
                        else  
                        {  
                            $("#passwordTip").html("<span style='color:red'>失败，请重试</span>");  
                            alert('操作失败');  
                        }  
                    },  
                    error:function()  
                    {  
                        alert('请求出错');  
                    },  
                    complete:function()  
                    {  
                        $('#acting_tips').hide();  
                    }  
                });  
  
        return false;  
    }  
  
    $(function () { $('#changePasswordModal').on('hide.bs.modal', function () {  
        // 关闭时清空edit状态为add  
        $("#act").val("add");  
        location.reload();  
    })  
    });