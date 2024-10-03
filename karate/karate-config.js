function fn(){

var config = {
        baseUrl : "https://reqres.in/"
        }
var env = karate.env
karate.log('Env is: ', env)

karate.configure('connectTimeout', 50000);
karate.configure('readTimeout',50000);
return config;
}