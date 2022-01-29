function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
    var apiUrl;
    var dataSource;

    if (!env) {
        env = 'qa';
    }
    if (env === 'qa') {
        apiUrl ='https://swapi.dev/api/'
        dataSource = 'qa'
    }
    if (env === 'uat') {
        apiUrl ='https://swapi.dev/api/'
        dataSource = 'uat'
    }

    var config = {
        apiUrl, env, dataSource
    }

    karate.configure('ssl', true);
    return config;
}