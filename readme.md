# Tarea 3: Service Unit

En este proyecto se busca implementar un *Service Unit* que levante un servicio simple hecho en NodeJS y Express, se busca que dicho servicio se levante automáticamente al arrancar la computadora y después de que se levante el servicio de red.

Adicionalmente, el *Service Unit* deberá revisar automáticamente si hay cambios en el repositorio de la rama *Deployment*, de ser el caso deberá actualizar los cambios y volver a levantar servicio.


## Instalar NodeJS y Express

La presente sección sigue los pasos de la [guía oficial de Fedora](https://developer.fedoraproject.org/tech/languages/nodejs/nodejs.html) para la instalación de NodeJS, y de igual manera para [Express](https://expressjs.com/en/starter/installing.html).

- Instalar Node JS
   
    ```bash
    sudo dnf install nodejs
    ```
    
- Configurar npm

    ```bash
    npm init
    ```

- Instalar Express

    ```bash
    npm install express
    ```


## Ejecutar un HelloWorld!

Para ejecutar un HelloWorld, deberemos crear el siguiente archivo de JavaScript, el cuál llamaremos `app.js`:

```javascript
const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send('Hello World!');
});

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`);
});
```

Y para ejecutarlo, podemos realizar el siguiente comando

```bash
node app.js
```

Para comprobar el éxito de esta operación, podemos acceder al siguiente url [http://localhost:3000](http://localhost:3000) y observar el mensaje escrito, de la siguiente forma:

![HelloWorld example](/evidencias/helloWorld.png)