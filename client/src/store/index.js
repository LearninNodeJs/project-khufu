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
      state.error=payload;
    },
    clearError(state){
      state.error=null;
    },
    setToken(state,payload){
      state.token=payload;
    },
    clearToken(state){
      state.token= null;
    }
  },
  actions:{
    //Include actions that call rest apis
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
