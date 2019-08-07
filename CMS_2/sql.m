javaaddpath('mysql-connector-java-8.0.13.jar')

datasource = 'CERN_LHC';
username = 'root';
password = 'dbroot';
driver = 'com.mysql.cj.jdbc.Driver';
url = 'jdbc:mysql://18.191.183.16:3306/';

conn = database(datasource,username,password,driver,url);

conn.Message

name='CMS';
event_name='test';
event_numb = 'test';
data = [name, event_name, event_numb]
sqlwrite(conn, 'Collider', data);

data = table("CMS", "name_test2", "123",'VariableNames',{'collider_name' 'event_name' 'event_number' });