<template>
  <div id="page-text-fields">
    <v-container grid-list-xl fluid>
      <v-layout row wrap>
        <v-flex sm12>
          <v-widget title="Registration">
            <div slot="widget-content">
              <v-container>
                <v-layout row>
                  <v-flex xs4>
                    <v-subheader>E-mail</v-subheader>
                  </v-flex>
                  <v-flex xs8>
                    <v-text-field
                      label="Enter E-mail"
                      v-model="email"
                      :rules="[rules.required, rules.email]"
                    ></v-text-field>
                  </v-flex>
                </v-layout>
                <v-layout row>
                  <v-flex xs4>
                    <v-subheader>First Name</v-subheader>
                  </v-flex>
                  <v-flex xs8>
                    <v-text-field
                      name="fName"
                      label="Enter your first name"
                      color="primary"
                      id="fName"
                    ></v-text-field>
                  </v-flex>
                </v-layout>
                <v-layout row>
                  <v-flex xs4>
                    <v-subheader>Last Name</v-subheader>
                  </v-flex>
                  <v-flex xs8>
                    <v-text-field
                      name="lName"
                      label="Enter your last name"
                      color="success"
                      class="input-group--focused"
                    ></v-text-field>
                  </v-flex>
                </v-layout>
                <v-layout row>
                  <v-flex xs4>
                    <v-subheader>Phone Number</v-subheader>
                  </v-flex>
                  <v-flex xs8>
                    <v-text-field
                      name="phoneNo"
                      label="Enter your phone Number"
                      append-icon="phone"
                    ></v-text-field>
                  </v-flex>
                </v-layout>

                <v-layout row >
                  <v-flex xs4>
                    <v-subheader>Enter your date of birth</v-subheader>
                  </v-flex>
                  <v-flex xs8>

                    <v-text-field
                      class="mr-2"
                      label="DD/MM/YYYY"
                      append-icon="today"

                      required
                    ></v-text-field>


                  </v-flex>

                </v-layout>

                <div class="d-flex">
                  <v-switch
                    label="I Agree to the Terms and Conditions "
                  ></v-switch>
                </div>
                <div class="form-btn">
                  <v-btn outline  color="primary">Submit</v-btn>
                </div>




              </v-container>
            </div>
          </v-widget>
        </v-flex>
      </v-layout>
    </v-container>
  </div>
</template>

<script>
  import VWidget from '@/components/VWidget';
  export default {
    components: {
      VWidget
    },
    data () {
      return {
        email: '',
        rules: {
          required: (value) => !!value || 'Required.',
          email: (value) => {
            const pattern = /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
            return pattern.test(value) || 'Invalid e-mail.';
          }
        }
      };
    },
    computed: {
    },
    methods: {
    }
  };
</script>
