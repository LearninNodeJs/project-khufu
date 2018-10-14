<template>
  <v-container fluid>
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
              <v-btn type="submit" :disabled="!isFormValid" outline>
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
          email:'',
          password:''
        }
      },
    computed:{
        isFormValid(){
          return this.email !== '' && this.password !==''
        }
    }
  }
</script>
