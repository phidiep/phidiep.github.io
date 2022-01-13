<template>
  <v-container>
    <v-row class="text-center">
      <v-col cols="12">
        <v-form ref="form" v-model="valid" lazy-validation>
          <!-- <v-text-field
            v-model="name"
            :counter="100"
            :rules="nameRules"
            label="Name1"
            required
          ></v-text-field> -->
          <v-tag-list v-model="tags"></v-tag-list>
          <v-combobox
            multiple
            label="Tags"
            append-icon
            chips
            deletable-chips
            class="tag-input"
            @keyup.tab="updateTags"
          >
          </v-combobox>
          <!-- <v-chip
            v-for="tag in myJson"
            :key="tag.name"
          >
            {{ tag.name }}
          </v-chip> -->
          <v-btn
            :disabled="!valid"
            color="success"
            class="mr-4"
            @click="validate"
          >
            Search
          </v-btn>

          <v-btn color="error" class="mr-4" @click="reset"> Reset </v-btn>
        </v-form>
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
import TagList from "./TagList";
export default {
  data: () => ({
    valid: true,
    name: "",
    nameRules: [
      (v) => !!v || "Name is required",
      (v) => (v && v.length <= 10) || "Name must be less than 10 characters",
    ],
    tags: [
      "php",
      "ruby",
      "javascript",
      "python",
      "java",
      "c#",
      "scala",
      "closure",
    ],
    //     tags: [{
    //   name: 'Shoping',
    // },{
    //   name: 'Art',
    // }, {
    //   name: 'Tech',
    // }, {
    //   name: 'Creative Writing'
    // }
    // ]
  }),
  components: {
    "v-tag-list": TagList,
  },
  methods: {
    validate() {
      this.$refs.form.validate();
    },
    reset() {
      this.$refs.form.reset();
    },
  },
};
</script>