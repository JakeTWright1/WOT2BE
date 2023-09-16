import { application } from "./application";

import HelloController from "./hello_controller";
application.register("hello", HelloController);

import NavbarController from "./navbar_controller";
application.register("hello", NavbarController);

import { initSortable } from "./init_sortable";
initSortable();
