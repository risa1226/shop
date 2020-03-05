import Vue from 'vue/dist/vue.esm.js';
import axios from 'axios';

var likeComponent = Vue.extend({
  template: '<button  class="button_favorite" @click="onFavorite" :class= "{ favorite : isFavorite }">{{ buttonText }}</button>',
  props: ['userId', 'itemId', 'favorite'],
  created(){
    console.log(`favorite-status: ${this.favorite}`)
    console.log(this.isFavorite)
    this.isFavorite = this.favorite
    console.log(this.isFavorite)
  },
  data (){
    return {
      isFavorite: false
    }
  },
  computed:{
    buttonText: function(){ return this.isFavorite ? "お気に入り"  : "お気に入りにする" }
  },
  methods: {
    onFavorite: function(){
      if(this.isFavorite){
      //   delete
        axios.delete('/api/favorite/delete', { data: {user_id: this.userId, item_id: this.itemId}})
          .then(response => {
            // console.log(response.data)
          this.isFavorite = !response.data.favorite_delete
          })
      }

      if(!this.isFavorite){
      //   post
        axios.post('/api/favorites', { user_id: this.userId, item_id: this.itemId})
        .then(response => {
          // console.log(response.data)
          this.isFavorite = response.data.favorite_create
        })
      }
    },
  }
})

const app = new Vue({
    el: '#app',
    components: {
      'like-component': likeComponent
    }
})
