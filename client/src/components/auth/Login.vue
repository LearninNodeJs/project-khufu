<template>
    <v-content>
      <v-container fluid fill-height>
        <v-layout align-center justify-center>
          <v-flex xs12 sm8 md4 lg4>
            <v-card class="elevation-1 pa-3">
              <v-card-text>
                <div class="layout column align-center">
                  <h1 class="flex my-4 primary--text">Project Khufu</h1>
                </div>
                <v-form>
                  <v-text-field append-icon="person" name="login" label="Login" type="text" v-model="email"></v-text-field>
                  <v-text-field append-icon="lock" name="password" label="Password" id="password" type="password" v-model="password"></v-text-field>
                </v-form>
              </v-card-text>
              <v-card-actions>
                <v-btn flat @click="onClickRegistration">
                  Not Registered?
                </v-btn>
                <v-spacer></v-spacer>
                <v-btn block color="primary" @click="OnClickToLogin" :disabled="!isFormValid">Login</v-btn>
              </v-card-actions>
            </v-card>
          </v-flex>
        </v-layout>
      </v-container>
    </v-content>
</template>
<script>
  export default{
    data(){
      return{
        email:'',
        password:''
      }
    },
    computed:{
      isFormValid(){
        return this.email!=='' && this.password!==''
      },
      isLoading(){
        return this.$store.state.loading
      },
      error(){
        return this.$store.state.error
      }
    },
    methods:{
      async OnClickToLogin(){
        try{
            const payload = {
              email:this.email,
              password:this.password
            };
            const response = await this.$store.dispatch('login',payload);
            console.log('response');
            this.$router.push('/dashboard');
        }catch (e) {
          console.log(e.message);
        }
      },
      async onClickRegistration(){
        try{
          this.$router.push('/register')
        }catch (e) {
          console.log(e.message);
        }
      }
    },
    mounted(){
      this.$store.dispatch('clearError');
    }

  }
</script>

<style scoped lang="css">
  #login {
    height: 50%;
    width: 100%;
    position: absolute;
    top: 0;
    left: 0;
    content: "";
    z-index: 0;
  }
</style>
