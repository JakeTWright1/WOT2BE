// src/plugins/init_sortable.js
import Sortable from "sortablejs";

const list = document.querySelector("#results-fav");

const initSortable = () => {
  Sortable.create(list, {
    animation: 100,
  });
};

export { initSortable };
