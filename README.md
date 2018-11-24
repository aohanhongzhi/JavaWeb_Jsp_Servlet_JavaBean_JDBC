javaWeb基础


JSP +　Servlet + JavaBean + JDBC


jsp: (view) 负责界面渲染

Servlet （control） 负责控制

JavaBean (model) 负责逻辑

JDBC 负责数据库连接

MVC模型！


实际上来说，操作数据库的逻辑代码，无论放在哪都是可以的，可以放在jsp,也可以放在Servlet，还可以放在JavaBean都是有对应的操作方式的，但是后来发现MVC模型是最规范，最好的解决方案。有利于编码的发展。逻辑更加清晰，模块化更方便。
