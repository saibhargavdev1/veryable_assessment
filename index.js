import { expressApp } from './app/index.js';

const PORT = 3000;

expressApp.listen( 
    PORT
    , () => console.log( `Express App listening at http://localhost:${ PORT }` ) 
);