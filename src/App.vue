<template>
  <v-app>
    <v-main>
      <v-container>
        <InputForm />
        <section class="products">
          <ProductList />
        </section>
      </v-container>
    </v-main>
  </v-app>
</template>

<script>
import InputForm from "./components/InputForm";
import ProductList from "./components/ProductList.vue";
export default {
  name: "App",

  components: {
    InputForm,
    ProductList,
  },
};
</script>

<style>
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  font-family: "montseratt", sans-serif;
}

v-container {
  width: 100vh;
  min-height: 100vh;
  overflow: hidden;

  background-color: #eee;
  display: flex;
  justify-content: center;
  align-items: center;
}

.products {
  display: flex;
  max-width: 1280px;
  padding: 25px;
  margin: 0 auto;
}
</style>
