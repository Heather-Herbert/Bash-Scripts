#////////////////////////////////////////////////////////
# (c) Heather Herbert
#
# A simple bash script to pull iffy operations from open source web apps
#
# V 1.0 the inital version - uploaded to git-hub as I keep loseing it
#
echo "map.sh - a simple script to scan subdirectorys to at PHP, javascipt and HTML"
echo "         which may lead to security holes"
echo " "
echo " (c) Heather Herbert 2013 - GPL 2"
echo " Please see http://www.gnu.org/licenses/gpl-2.0.html for info"
echo " "
echo " Output from this script is a set of text files, each having the format of"
echo " Language_APIName.txt, i.e. php_post.txt lists all occurances of $_POST "
echo " "
echo "Checking Java files"
egrep -rn --include=*.{java} "getParameterNames" . > java_getParameterNames.txt
egrep -rn --include=*.{java} "getParameterValues" . > java_getParameterValues.txt
egrep -rn --include=*.{java} "getParameterMap" . > java_getParameterMap.txt
egrep -rn --include=*.{java} "getQueryString" . > java_getQueryString.txt
egrep -rn --include=*.{java} "getHeader" . > java_getHeader.txt
egrep -rn --include=*.{java} "getHeaderNames" . > java_getHeaderNames.txt
egrep -rn --include=*.{java} "getRequestedURI" . > java_getRequestedURI.txt
egrep -rn --include=*.{java} "getRequestedURL" . > java_getRequestedURL.txt
egrep -rn --include=*.{java} "getCookies" . > java_getCookies.txt
egrep -rn --include=*.{java} "getRequestedSessionId" . > java_getRequestedSessionId.txt
egrep -rn --include=*.{java} "getInputStream" . > java_getInputStream.txt
egrep -rn --include=*.{java} "getReader" . > java_getReader.txt
egrep -rn --include=*.{java} "getMethod" . > java_getMethod.txt
egrep -rn --include=*.{java} "getProtocol" . > java_getProtocol.txt
egrep -rn --include=*.{java} "getServerName" . > java_getServerName.txt
egrep -rn --include=*.{java} "getRemoteUser" . > java_getRemoteUser.txt
egrep -rn --include=*.{java} "getUserPrincipal" . > java_getUserPrincipal.txt
egrep -rn --include=*.{java} "executeQuery" . > java_executeQuery.txt
egrep -rn --include=*.{java} "FileInputStream" . > java_FileInputStream.txt
egrep -rn --include=*.{java} "FileOutputStream" . > java_FileOutputStream.txt
egrep -rn --include=*.{java} "exec" . > java_exec.txt
egrep -rn --include=*.{java} "sendRedirect" . > java_sendRedirect.txt
egrep -rn --include=*.{java} "setStatus" . > java_setStatus.txt
egrep -rn --include=*.{java} "addHeader" . > java_addHeader.txt
egrep -rn --include=*.{java} "Socket" . > java_Socket.txt
egrep -rn --include=*.{xml} "login-config" . > java_xml_login-config.txt
egrep -rn --include=*.{xml} "security-constraint" . > java_xml_security-constraint.txt
egrep -rn --include=*.{xml} "session-config" . > java_xml_session-config.txt
egrep -rn --include=*.{xml} "error-page" . > java_xml_error-page.txt
egrep -rn --include=*.{xml} "init-param" . > java_xml_init-param.txt

echo "Asp.net"

egrep -rn --include=*.{asp} "Params" . > asp_Params.txt
egrep -rn --include=*.{asp} "Item" . > asp_Item.txt
egrep -rn --include=*.{asp} "Form" . > asp_Form.txt
egrep -rn --include=*.{asp} "QueryString" . > asp_QueryString.txt
egrep -rn --include=*.{asp} "ServerVariables" . > asp_ServerVariables.txt
egrep -rn --include=*.{asp} "Headers" . > asp_Headers.txt
egrep -rn --include=*.{asp} "Url" . > asp_Url.txt
egrep -rn --include=*.{asp} "Cookies" . > asp_Cookies.txt
egrep -rn --include=*.{asp} "Files" . > asp_Files.txt
egrep -rn --include=*.{asp} "InputStream" . > asp_InputStream.txt
egrep -rn --include=*.{asp} "BinaryRead" . > asp_BinaryRead.txt
egrep -rn --include=*.{asp} "HttpMethod" . > asp_HttpMethod.txt
egrep -rn --include=*.{asp} "Browser" . > asp_Browser.txt
egrep -rn --include=*.{asp} "UserAgent" . > asp_UserAgent.txt
egrep -rn --include=*.{asp} "AcceptTypes" . > asp_AcceptTypes.txt
egrep -rn --include=*.{asp} "UserLanguages" . > asp_UserLanguages.txt
egrep -rn --include=*.{asp} "Session" . > asp_Session.txt
egrep -rn --include=*.{asp} "FileStream" . > asp_FileStream.txt
egrep -rn --include=*.{asp} "StreamReader" . > asp_StreamReader.txt
egrep -rn --include=*.{asp} "StreamWriter" . > asp_StreamWriter.txt
egrep -rn --include=*.{asp} "SqlCommand" . > asp_SqlCommand.txt
egrep -rn --include=*.{asp} "SqlDataAdapter" . > asp_SqlDataAdapter.txt
egrep -rn --include=*.{asp} "OleDbCommand" . > asp_OleDbCommand.txt
egrep -rn --include=*.{asp} "OdbcCommand" . > asp_OdbcCommand.txt
egrep -rn --include=*.{asp} "Execute" . > asp_Execute.txt
egrep -rn --include=*.{asp} "Process.Start" . > asp_Process_Start.txt
egrep -rn --include=*.{asp} "ProcessStartInfo" . > asp_ProcessStartInfo.txt

egrep -rn --include=*.{config} "httpCookies" . > asp_config_httpCookies.txt
egrep -rn --include=*.{config} "sessionState" . > asp_config_sessionState.txt
egrep -rn --include=*.{config} "compilation" . > asp_config_compilation.txt
egrep -rn --include=*.{config} "customErrors" . > asp_config_customErrors.txt
egrep -rn --include=*.{config} "httpRuntime" . > asp_config_httpRuntime.txt

echo "PHP"

egrep -irn --include=*.{php,html} "_get" . > php_get.txt
egrep -irn --include=*.{php,html} "_post" . > php_post.txt
egrep -irn --include=*.{php,html} "_request" . > php_request.txt
egrep -irn --include=*.{php,html} "_cookies" . > php_cookie.txt
egrep -irn --include=*.{php,html} "_server" . > php_server.txt
egrep -irn --include=*.{php,html} "globals" . > php_globals.txt
egrep -irn --include=*.{php,html} "mysql_query" . > php_mysql.txt
egrep -irn --include=*.{php,html} "fopen" . > php_fopen.txt
egrep -irn --include=*.{php,html} "readfile" . > php_readfile.txt
egrep -irn --include=*.{php,html} "fpassthru" . > php_fpassthru.txt
egrep -irn --include=*.{php,html} "gzopen" . > php_gzopen.txt
egrep -irn --include=*.{php,html} "_files" . > php_files.txt
egrep -irn --include=*.{php,html} "gzpassthru" . > php_gzpassthru.txt
egrep -irn --include=*.{php,html} "readgzfile" . > php_readgzfile.txt
egrep -irn --include=*.{php,html} "copy" . > php_copy.txt
egrep -irn --include=*.{php,html} "rename" . > php_rename.txt
egrep -irn --include=*.{php,html} "rmdir" . > php_rmdir.txt
egrep -irn --include=*.{php,html} "mkdir" . > php_mkdir.txt
egrep -irn --include=*.{php,html} "unlink" . > php_unlink.txt
egrep -irn --include=*.{php,html} "file_get_contents" . > php_file_get_contents.txt
egrep -irn --include=*.{php,html} "file_put_contents" . > php_file_put_contents.txt
egrep -irn --include=*.{php,html} "parse_ini_file" . > php_parse_ini_file.txt
egrep -irn --include=*.{php,html} "include" . > php_include.txt
egrep -irn --include=*.{php,html} "require" . > php_require.txt
egrep -irn --include=*.{php,html} "virtual" . > php_virtual.txt
egrep -irn --include=*.{php,html} "mssql_query" . > php_mssql.txt
egrep -irn --include=*.{php,html} "pg_query" . > php_pg.txt
egrep -irn --include=*.{php,html} "eval" . > php_eval.txt
egrep -irn --include=*.{php,html} "call_user_func" . > php_call_user_func.txt
egrep -irn --include=*.{php,html} "call_user_method" . > php_call_user_method.txt
egrep -irn --include=*.{php,html} "create_function" . > php_create_function.txt
egrep -irn --include=*.{php,html} "exec" . > php_exec.txt
egrep -irn --include=*.{php,html} "passthru" . > php_passthru.txt
egrep -irn --include=*.{php,html} "popen" . > php_popen.txt
egrep -irn --include=*.{php,html} "proc_open" . > php_proc_open.txt
egrep -irn --include=*.{php,html} "shell_exec" . > php_shell_exec.txt
egrep -irn --include=*.{php,html} "system" . > php_system.txt
egrep -irn --include=*.{php,html} "http_redirect" . > php_http_redirect.txt
egrep -irn --include=*.{php,html} "header" . > php_header.txt
egrep -irn --include=*.{php,html} "setResponseCode" . > php_setResponseCode.txt
egrep -irn --include=*.{php,html} "setHeaders" . > php_setHeaders.txt
egrep -irn --include=*.{php,html} "socket" . > php_socket.txt
egrep -irn --include=*.{php,html} "fsockopen" . > php_fsockopen.txt

echo "ColdFusion"

egrep -irn --include=*.{cf,html} "cffile" . > cf_.txt
egrep -irn --include=*.{cf,html} "cfinclude" . > cf_.txt
egrep -irn --include=*.{cf,html} "CFQUERY" . > cf_.txt
egrep -irn --include=*.{cf,html} "cflocation" . > cf_.txt
egrep -irn --include=*.{cf,html} "cfheader" . > cf_.txt
egrep -irn --include=*.{cf,html} "cfabort" . > cf_.txt
egrep -irn --include=*.{cf,html} "cfmail" . > cf_.txt
egrep -irn --include=*.{cf,html} "cfset" . > cf_.txt
egrep -irn --include=*.{cf,html} "cffile" . > cf_.txt
egrep -irn --include=*.{cf,html} "cfftp" . > cf_.txt
egrep -irn --include=*.{cf,html} "cfdump" . > cf_.txt
egrep -irn --include=*.{cf,html} "cfhttp" . > cf_.txt

echo "Perl"

egrep -rn --include=*.{pl,pm} "param" . > pl_param.txt
egrep -rn --include=*.{pl,pm} "cookie" . > pl_cookie.txt
egrep -rn --include=*.{pl,pm} "Vars" . > pl_Vars.txt
egrep -rn --include=*.{pl,pm} "self_url" . > pl_self_url.txt
egrep -rn --include=*.{pl,pm} "url" . > pl_url.txt
egrep -rn --include=*.{pl,pm} "query_string" . > pl_query_string.txt
egrep -rn --include=*.{pl,pm} "referer" . > pl_referer.txt
egrep -rn --include=*.{pl,pm} "request_method" . > pl_request_method.txt
egrep -rn --include=*.{pl,pm} "user_agent" . > pl_user_agent.txt
egrep -rn --include=*.{pl,pm} "http" . > pl_http.txt
egrep -rn --include=*.{pl,pm} "ReadParse" . > pl_ReadParse.txt
egrep -rn --include=*.{pl,pm} "open" . > pl_open.txt
egrep -rn --include=*.{pl,pm} "sysopen" . > pl_sysopen.txt
egrep -rn --include=*.{pl,pm} "selectall_arrayref" . > pl_selectall_arrayref.txt
egrep -rn --include=*.{pl,pm} "system" . > pl_system.txt
egrep -rn --include=*.{pl,pm} "exec" . > pl_exec.txt
egrep -rn --include=*.{pl,pm} "qx" . > pl_qx.txt
egrep -rn --include=*.{pl,pm} "redirect" . > pl_redirect.txt
egrep -rn --include=*.{pl,pm} "socket" . > pl_socket.txt

echo "Javascript"

egrep -irn --include=*.{html,js} "document.location" . > js_document_location.txt
egrep -irn --include=*.{html,js} "document.cookie" . > js_document_cookie.txt
egrep -irn --include=*.{html,js} "document.URL" . > js_document_URL.txt
egrep -irn --include=*.{html,js} "document.referrer" . > js_document_referrer.txt
egrep -irn --include=*.{html,js} "window.location" . > js_window_location.txt
egrep -irn --include=*.{html,js} "document.write" . > js_document_write.txt
egrep -irn --include=*.{html,js} "document.body.innrtHtml" . > js_document_body_innrtHtml.txt
egrep -irn --include=*.{html,js} "eval" . > js_eval.txt
egrep -irn --include=*.{html,js} "window.execScript" . > js_window_execScript.txt
egrep -irn --include=*.{html,js} "window.setInterval" . > js_window_setInterval.txt
egrep -irn --include=*.{html,js} "window.setTimeout" . > js_window_setTimeout.txt

find -maxdepth 1 -type f -size 0 | xargs rm -f
