(function(e){var t=e.django||(e.django={});t.pluralidx=function(e){var t=0;return typeof t=="boolean"?t?1:0:t},t.catalog={"%curr% of %total%":"%curr% / %total%",'<a href="%url%" target="_blank">The image</a> could not be loaded.':'<a href="%url%" target="_blank">图片</a> 无法被加载。',"Are you sure you want to delete these selected items?":"确定要删除选中的条目吗？",Cancel:"取消","Canceled.":"已取消。","Close (Esc)":"关闭 (Esc)","Copy {placeholder} to:":"复制 {placeholder} 到","Copying %(name)s":"正在复制 %(name)s","Copying file %(index)s of %(total)s":"正在复制文件  %(index)s / %(total)s",Delete:"删除","Delete Items":"删除条目","Delete succeeded.":"删除成功。","Empty file upload result":"空文件",Error:"错误","Failed to copy %(name)s":"复制 %(name)s 失败","Failed to delete %(name)s and %(amount)s other items.":"删除 %(name)s 以及另外 %(amount)s 项失败。","Failed to delete %(name)s and 1 other item.":"删除 %(name)s 以及另外1项失败。","Failed to delete %(name)s.":"删除 %(name)s 失败。","Failed to get update url":"无法获得更新链接","Failed to get upload url":"无法获得上传链接","Failed to move %(name)s":"移动 %(name)s 失败","Failed to send to {placeholder}":"发送给 {placeholder} 失败","Failed to share to {placeholder}":"共享给 {placeholder} 失败","Failed.":"失败。","Failed. Please check the network.":"操作失败。请检查网络是否已连接。","File Upload canceled":"文件上传已取消","File Upload complete":"文件上传已完成","File Upload failed":"文件上传失败","File Uploading...":"文件上传中...","File is too big":"文件太大","File is too small":"文件太小","Filetype not allowed":"不支持的文件类型","Internal error. Failed to copy %(name)s and %(amount)s other item(s).":"内部错误。复制 %(name)s 和其他 %(amount)s 项内容失败。","Internal error. Failed to copy %(name)s.":"内部错误。复制 %(name)s 失败。","Internal error. Failed to move %(name)s and %(amount)s other item(s).":"内部错误。移动 %(name)s 和其他 %(amount)s 项内容失败。","Internal error. Failed to move %(name)s.":"内部错误。移动 %(name)s 失败。","Invalid destination path":"目标路径无效","It is required.":"必填项。","Just now":"刚才","Loading...":"加载中...","Max number of files exceeded":"文件太多","Move {placeholder} to:":"移动 {placeholder} 到","Moving %(name)s":"正在移动 %(name)s","Moving file %(index)s of %(total)s":"正在移动文件 %(index)s / %(total)s","Name is required":"名称为必填项","Next (Right arrow key)":"下一张（右方向键）","Only an extension there, please input a name.":"请输入完整的文件名。","Open in New Tab":"在新标签页打开","Password is required.":"密码为必填项。","Password is too short":"密码太短","Passwords don't match":"两次输入的密码不一致","Permission error":"权限错误","Please check the network.":"请检查网络是否已连接。","Please choose a directory":"请选择一个目录","Please enter days.":"请输入天数。","Please enter password":"请输入密码","Please enter the password again":"请再次输入密码","Please enter valid days":"请输入有效的天数","Please input at least an email.":"请输入至少一个邮箱。","Please select a contact or a group.":"请选择联系人或群组","Previous (Left arrow key)":"上一张（左方向键）","Processing...":"处理中...","Really want to delete {lib_name}?":"确定要删除 {lib_name} ?","Rename Directory":"重命名目录","Rename File":"重命名文件","Replace file {filename}?":"覆盖文件 {filename} ？","Saving...":"保存中...","Search users or enter emails":"搜索用户或输入邮箱","Select groups":"选择群组","Set {placeholder}'s permission":"设置 {placeholder} 权限","Share {placeholder}":"共享 {placeholder}",Start:"上传",Success:"成功","Successfully copied %(name)s and %(amount)s other items.":"成功复制 %(name)s 和其他 %(amount)s 项条目。","Successfully copied %(name)s and 1 other item.":"成功复制 %(name)s 和另1项条目。","Successfully copied %(name)s.":"成功复制 %(name)s。","Successfully deleted %(name)s":"删除 %(name)s 成功","Successfully deleted %(name)s and %(amount)s other items.":"成功删除 %(name)s 和其他 %(amount)s 项内容。","Successfully deleted %(name)s and 1 other item.":"成功删除 %(name)s 和其他一项内容。","Successfully deleted %(name)s.":"成功删除 %(name)s。","Successfully moved %(name)s and %(amount)s other items.":"成功移动 %(name)s 和其他 %(amount)s 项条目。","Successfully moved %(name)s and 1 other item.":"成功移动 %(name)s 和另1项条目。","Successfully moved %(name)s.":"成功移动 %(name)s。","Successfully sent to {placeholder}":"成功发送给 {placeholder}","Successfully shared to {placeholder}":"成功共享给 {placeholder}","Successfully unshared {placeholder}":"成功取消共享 {placeholder}","Successfully unstared {placeholder}":"成功取消星标 {placeholder}","Uploaded bytes exceed file size":"上传大小超过了文件大小","You don't have any library at present.":"你目前还没有资料库","You have not renamed it.":"你还没重命名。",canceled:"已取消",uploaded:"已上传"},t.gettext=function(e){var n=t.catalog[e];return typeof n=="undefined"?e:typeof n=="string"?n:n[0]},t.ngettext=function(e,n,r){var i=t.catalog[e];return typeof i=="undefined"?r==1?e:n:i[t.pluralidx(r)]},t.gettext_noop=function(e){return e},t.pgettext=function(e,n){var r=t.gettext(e+""+n);return r.indexOf("")!=-1&&(r=n),r},t.npgettext=function(e,n,r,i){var s=t.ngettext(e+""+n,e+""+r,i);return s.indexOf("")!=-1&&(s=t.ngettext(n,r,i)),s},t.interpolate=function(e,t,n){return n?e.replace(/%\(\w+\)s/g,function(e){return String(t[e.slice(2,-2)])}):e.replace(/%s/g,function(e){return String(t.shift())})},t.formats={DATETIME_FORMAT:"Y年n月j日G:i:s",DATETIME_INPUT_FORMATS:["%Y-%m-%d %H:%M:%S","%Y-%m-%d %H:%M:%S.%f","%Y-%m-%d %H:%M","%Y-%m-%d","%m/%d/%Y %H:%M:%S","%m/%d/%Y %H:%M:%S.%f","%m/%d/%Y %H:%M","%m/%d/%Y","%m/%d/%y %H:%M:%S","%m/%d/%y %H:%M:%S.%f","%m/%d/%y %H:%M","%m/%d/%y"],DATE_FORMAT:"Y年n月j日",DATE_INPUT_FORMATS:["%Y-%m-%d","%m/%d/%Y","%m/%d/%y","%b %d %Y","%b %d, %Y","%d %b %Y","%d %b, %Y","%B %d %Y","%B %d, %Y","%d %B %Y","%d %B, %Y"],DECIMAL_SEPARATOR:".",FIRST_DAY_OF_WEEK:"0",MONTH_DAY_FORMAT:"n月j日",NUMBER_GROUPING:"0",SHORT_DATETIME_FORMAT:"Y/m/d G:i:s",SHORT_DATE_FORMAT:"Y/m/d",THOUSAND_SEPARATOR:",",TIME_FORMAT:"G:i:s",TIME_INPUT_FORMATS:["%H:%M:%S","%H:%M"],YEAR_MONTH_FORMAT:"Y年n月"},t.get_format=function(e){var n=t.formats[e];return typeof n=="undefined"?e:n},e.pluralidx=t.pluralidx,e.gettext=t.gettext,e.ngettext=t.ngettext,e.gettext_noop=t.gettext_noop,e.pgettext=t.pgettext,e.npgettext=t.npgettext,e.interpolate=t.interpolate,e.get_format=t.get_format})(this);