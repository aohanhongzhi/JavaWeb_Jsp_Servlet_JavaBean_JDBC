<%@page import="java.sql.Timestamp"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Optional"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="servlet.NoteBean"%>
<%@page import="servlet.Note"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>留言信息列表</title>
</head>
<body>
	<h2>所有留言信息如下</h2>
		<table border ="1" width="700" >
			<tr>
				<th width="100">留言标题</th>
				<th width="200">内容</th>
				<th width="50">作者</th>
				<th width="200">发布时间</th>
			</tr>
			<%
				NoteBean noteBean  =  new NoteBean();
				List<Note> noteList = noteBean.findAllNotes();
				Iterator<Note> noteIt = noteList.iterator();
				Note tn =null;
				while (noteIt.hasNext()){
					
				tn = (Note)noteIt.next();
					
					//最好在这里输入比较好，因为如果是空的就会报错
				
				if(tn ==null ){
					tn = new Note();
					tn.setId(0);
					tn.setTitle("没有书籍");
					tn.setAuthor("");
					tn.setCreateTime(new Timestamp(System.currentTimeMillis()));
				}
				
				
			%>
			<tr>
				<td><%=tn.getTitle()%></td>
				<td><%=tn.getContent() %></td>
				<td><%=tn.getAuthor() %></td>
				<td><%=tn.getCreateTime() %></td>
			</tr>
			
			<%
				}
				/*这里的红色报错可以直接忽略，可能是eclipse的编译器导致的。*/
			%>
			
			
		</table>


</body>
</html>