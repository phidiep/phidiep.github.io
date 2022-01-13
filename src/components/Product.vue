<template>
  <v-card class="mx-auto my-12" max-width="500" max-height="150">
    <div class="d-flex flex-no-wrap justify-space-between">
      <v-avatar class="ma-3" size="125" tile>
        <v-img
          lazy-src="https://picsum.photos/id/11/10/6"
          v-bind:src="product.src"
        ></v-img>
      </v-avatar>

      <v-card-text>
        <v-row>
          <v-card-title class="text-h6" v-text="product.title"> </v-card-title>
        </v-row>
        <v-row align="center" class="mx-0">
          <div class="product-detail">
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Maiores ad
            reprehenderit enim nisi perferendis.
          </div>
        </v-row>
      </v-card-text>
    </div>
  </v-card>
</template>

<script>
export default {
  name: "product",
  props: ["product"],
};
</script>

<style>
.product {
  /* flex: 1 1 33.333%; */
  width: 100%;
  padding: 25px;
}

.product-inner {
  position: relative;
  /* padding: 25px; */
  /* box-shadow: 0px 0px 16px rgba(0, 0, 0, 25); */
}

.product-image-wrap .image {
  width: 100%;
}

.product-detail {
  text-overflow: ellipsis;
  overflow: hidden;
}
</style>
