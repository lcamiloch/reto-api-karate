function fn() {
  var env = karate.env; 
  
  if (!env) {
    env = 'qa';
  }
  
  karate.log('karate.env system property was:', env);
  
  var config = {
    baseUrl: 'https://webservice.toscacloud.com/api/v1'
  };

  karate.configure('connectTimeout', 5000);
  karate.configure('readTimeout', 5000);
  karate.configure('headers', {
    'Content-Type': 'application/json',
    'Accept': 'application/json'
  });
  
  return config;
}