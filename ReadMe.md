# Python Virtual Environment Project Template

## Virtual Environment (Windows)

1. Open VSCode in the current directory and then open a terminal window.
2. Verify python3 is installed (`py --version` or  `python3 --version `or `python --version`).
3. Run `py -m venv .venv` or `python3 -m venv .venv` to create a virtual environment.
4. Select the main.py and verify the virtual environment is activated (see [image](./docs/1.png))
5. Run `pip install -r requirements.txt` to install the packages in the requirements.txt file.  The default packages are as follows, so change them as needed.
   - **ipykernel**: Provides the IPython kernel for Jupyter notebooks.
   - **python-dotenv**: Reads key-value pairs from a .env file and sets them as environment variables.
   - **pyyaml**: A YAML parser and emitter for Python.
   - **pyodbc**: Provides access to ODBC databases.
   - **pandas**: A powerful data manipulation and analysis library.
   - **SQLAlchemy**: SQL toolkit and Object-Relational Mapping (ORM) library.
   - **bokeh**: Interactive visualization library for modern web browsers.
   - **seaborn**: Statistical data visualization library built on top of matplotlib.
   - **plotly**: Interactive graphing library for making publication-quality graphs.
   - **openai**: Official Python client for the OpenAI API.
   - **pydantic**: Data validation and settings management using Python type annotations.
