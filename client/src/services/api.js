/* eslint-disable */
import axios from 'axios';

export default(module) =>{

  switch(module){
    case 'user':
      return axios.create({
        baseURL:''//Replace with authentication api url
      });
    case 'login':
      return axios.create({
        baseURL:'http://localhost/user/login' //Add another case for different api functions
      });
    default:
      return axios.create({
        baseURL:'' //Include base Url, that returns default api reference.
      });
  }
};
