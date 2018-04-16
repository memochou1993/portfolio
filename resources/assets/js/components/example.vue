<template>
    <div class="container">
        <input type="submit">
        {{ msg }}
    </div>
</template>

<script>
export default {
  mounted() {
    console.log("Component mounted.");
  },
  data: function() {
    return {
      msg: "Example"
    };
  }
};
</script>
