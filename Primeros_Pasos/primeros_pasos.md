# Primeros Pasos con Bash


### Creación de un Script Bash
- Para crear un script, crea un archivo de texto y asegúrate de que comience con `#!/bin/bash`.
- Podemos generar un archivo usando tecnicas de redireccionamiento HERE-DOCUMENT de la siguiente manera.
  ```sh
  cat << EOF > 1er_script.sh
  #!/bin/bash
  echo "Hola, Mundo!"

  EOF
  ```
- Dar permisos de ejecucion al script
  ```sh
  chmod 755 1er_script.sh
  ```
- Ejecutar el script
  ```sh
  ./1er_script.sh
  ```
