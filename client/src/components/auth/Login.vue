<template>
  <v-container fluid>
    <v-layout align-center justify-center v-if="error">
      <v-flex xs12 sm6>
        <app-alert @dismissed="onDismissed" :text="error"></app-alert>
      </v-flex>
    </v-layout>
    <v-layout justify-center align-center>
      <v-flex xs12 sm6>
        <v-card class="elevation-10">
            <v-toolbar dark color="primary">
              <v-toolbar-title>
                Login
              </v-toolbar-title>
            </v-toolbar>
          <v-card-text>
            <v-text-field
            v-model="email"
            name="email"
            label="Enter Email"
            type="email"
            outline
            append-icon="person"
            required>
            </v-text-field>
            <v-text-field
              v-model="password"
              name="email"
              label="Enter Password"
              type="password"
              outline
              append-icon="lock"
              required>
            </v-text-field>
            <div class="text-xs-center mt-3">
              <v-btn type="submit" @click.native="login" :disabled="!isFormValid" outline>
                LOGIN</v-btn>
            </div>
          </v-card-text>
        </v-card>
      </v-flex>
    </v-layout>
  </v-container>
</template>
<script>
  export default {
    data(){
      return{
        email: '',
        password: ''
      }
    },
    methods:{
      async login(){
        try{
          this.$store.dispatch('login',{email:this.email,password:this.password});
          // this.$store.dispatch('setToken',response.data.jwt);

        }catch (e) {
          console.log(e.message);
        }
      }
    },
    computed:{
        isFormValid(){
          return this.email !== '' && this.password !==''
        },
        isLoading(){
          return this.$store.state.loading;
        },
        error(){
          return this.$store.error;
        }
    }
  }
</script>
