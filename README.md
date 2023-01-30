# Anchor Linking Script
A script to link headers and anchors in two separate markdown documents.

### Usage
```bash
ruby script.rb <files.txt> <path_to_english_docs> <path_to_translated_docs>
```
Where:

`files.txt` is a file containing a list of filenames to process, one per line.
`path_to_english_docs` is the path to the directory containing the English markdown documents.
`path_to_translated_docs` is the path to the directory containing the translated markdown documents.

### Functionality
The script takes a list of markdown document filenames, and for each file:

- Reads the headers and their associated anchors from the English document
- Replaces the headers in the translated document with the headers from the English document, along with their associated anchors.


### Requirements
Ruby


### License
This code is licensed under the MIT License.

### Contributing
If you want to contribute to this project, please follow the standard Git workflow and make a pull request. Before making a pull request, please make sure that your changes are well tested and adhere to the code style of the project.