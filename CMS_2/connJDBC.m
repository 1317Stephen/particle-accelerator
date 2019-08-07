function [conn] = connJDBC()
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
javaaddpath('/mysql-connector-java-8.0.13.jar')
datasource = 'CERN_LHC';
username = 'root';
password = 'dbroot';
driver = 'com.mysql.cj.jdbc.Driver';
url = 'jdbc:mysql://18.191.183.16:3306/';
conn = database(datasource,username,password,driver,url);
end

