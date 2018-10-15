import Vue from 'vue';
import Vuex from 'vuex';
import api from '../services/api';

Vue.use(Vuex);

export const store = new Vuex.Store({
  state:{
    user:null,
    loading:null,
    error:null,
    token:null
  },
  mutations:{
    setLoading(state,payload){
      state.loading = payload;
    },
    setError(state,payload){
      state.error = payload;
    },
    clearError(state){
      state.error = null;
    },
    setToken(state,payload){
      state.token = payload;
    },
    clearToken(state){
      state.token = null;
    }
  },
  actions:{
    //Include actions that call rest apis
    async login({commit}){
      
      let response;
      try{
        alert(response);
        commit('clearError');
        commit('setLoading', true);
        response = await api('login').get('/user/login');
        commit('setToken', response.data);
        commit('setLoading', false);
      }catch(error){
        commit('setError', error);
        commit('setLoading', false);
      }
    }
  },
  getters: {
    token(state) {
      return state.token;
    },
    error(state) {
      return state.error;
    },
    loading(state) {
      return state.loading;
    },
  }
});
