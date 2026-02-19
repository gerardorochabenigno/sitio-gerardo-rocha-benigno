# Mi sitio personal web

Sitio web personal de **Gerardo Rocha Benigno**. El sitio presenta habilidades en **análisis de datos** y **machine learning** aplicados a inclusión financiera, transparencia financiera, crédito al consumo y pagos al menudeo.

Construido con [Quarto](https://quarto.org).

## Requisitos previos

- [Quarto](https://quarto.org/docs/get-started/) (>= 1.4)
- [Python](https://www.python.org/) >= 3.13
- [uv](https://docs.astral.sh/uv/)
- [R](https://www.r-project.org/) 

## Estructura del proyecto

```
mi-sitio/
├── _quarto.yml              # Configuración de Quarto (título, tema, navbar)
├── index.qmd                # Página principal / Acerca de (plantilla trestles)
├── cv.qmd                   # Currículum vitae / experiencia profesional
├── proyectos.qmd            # Listado de proyectos (cuadrícula desde posts/)
├── posts/                   # Proyectos individuales
│   └── tarjetas-suavizamiento/
│       ├── suavizamiento.ipynb   # Notebook de Jupyter
│       └── preview.png           # Imagen de vista previa
├── R/
│   └── sie_utils.R          # Funciones para consultar el API SIE de Banxico
├── foto.jpeg                # Foto de perfil
├── pyproject.toml           # Metadatos y dependencias de Python
├── .python-version          # Versión de Python (3.13)
├── .env                     # Variables de entorno (SIE_TOKEN) — NO versionar
├── .env_ejemplo             # Plantilla para .env
├── _site/                   # Salida estática generada (no editar)
└── .quarto/                 # Caché de Quarto (no editar)
```

## Comandos útiles

```bash
# Instalar dependencias de Python
uv sync

# Previsualizar el sitio con recarga en vivo
quarto preview

# Renderizar todo el sitio
quarto render

# Renderizar un archivo específico
quarto render posts/tarjetas-suavizamiento/suavizamiento.ipynb
```

## Agregar un nuevo proyecto

1. Crear una subcarpeta dentro de `posts/`, por ejemplo `posts/mi-proyecto/`.
2. Agregar un notebook de Jupyter (`.ipynb`) o un archivo `.qmd` con YAML front matter.
3. Incluir una imagen `preview.png` para la cuadrícula de proyectos.
4. El listado en `proyectos.qmd` se actualiza automáticamente.

## Tecnologías

| Categoría | Herramientas |
|---|---|
| Framework | Quarto (sitio estático) |
| Tema | Cosmo (Bootstrap) |
| Lenguajes | Python, R, SQL |
| Gestión de paquetes | uv |
| Dependencias Python | jupyter, jupyterlab, matplotlib, numpy, pandas |
| API | SIE de Banco de México (`R/sie_utils.R`) |

## Variables de entorno

Copiar `.env_ejemplo` a `.env` y definir:

| Variable | Descripción |
|---|---|
| `SIE_TOKEN` | Token de acceso al API del SIE de Banco de México |