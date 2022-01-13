<template>
  <div>
    <Product
      v-for="product in products"
      :key="product.color"
      :product="product"
    />
  </div>
</template>

<script>
import Product from "./Product.vue";
export default {
  name: "ProductList",

  components: {
    Product,
  },

  data: () => ({
    products: [
      {
        title: "Pho",
        color: "green",
        bgtext: "FOOD",
        src: require("../assets/pho.jpg"),
      },
      {
        title: "Pho",
        color: "blue",
        bgtext: "FOOD",
        src: require("../assets/pho.jpg"),
      },
      {
        title: "Pho",
        color: "red",
        bgtext: "FOOD",
        src: require("../assets/pho.jpg"),
      },
      {
        title: "Pho",
        color: "black",
        bgtext: "FOOD",
        src: require("../assets/pho.jpg"),
      },
    ],
  }),
};
</script>
